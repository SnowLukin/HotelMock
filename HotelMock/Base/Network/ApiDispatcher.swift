//
//  ApiDispatcher.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

protocol ApiDispatcher {}

extension ApiDispatcher {
    func fetchData<T: Decodable>(
        apiRouter: ApiRouter,
        completion: @escaping (Result<T, ApiError>) -> Void
    ) {
        var components = URLComponents()
        components.host = apiRouter.host
        components.scheme = apiRouter.scheme
        components.path = apiRouter.path
        components.queryItems = apiRouter.parameters
        
        guard let url = components.url else {
            completion(.failure(.urlError(URLError(.badURL))))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(.noData))
                return
            }
            
            guard
                let httpResponse = response as? HTTPURLResponse,
                200...299 ~= httpResponse.statusCode
            else {
                let responseError = (response as? HTTPURLResponse)?.statusCode ?? 500
                completion(.failure(.responseError(responseError)))
                return
            }

            guard let data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(.success(result))
            } catch let error as DecodingError {
                completion(.failure(.decodingError(error)))
            } catch {
                completion(.failure(.anyError))
            }
        }.resume()
    }

}
