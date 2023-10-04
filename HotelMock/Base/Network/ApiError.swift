//
//  ApiError.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum ApiError: Error, LocalizedError {
    case urlError(URLError)
    case responseError(Int)
    case decodingError(DecodingError)
    case noData
    case anyError
    
    var localizedDescription: String {
        switch self {
        case .urlError(let error):
            return "Url error: \(error.localizedDescription)"
        case .decodingError(let error):
            return "Failed decoding data: \(error.localizedDescription)"
        case .responseError(let error):
            return "Bad response code: \(error)"
        case .noData:
            return "Couldn't find data"
        case .anyError:
            return "Unknown error has ocurred"
        }
    }
}
