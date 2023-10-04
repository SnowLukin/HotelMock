//
//  ApiRouter.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

protocol ApiRouter {
    var host: String { get }
    var scheme: String { get }
    var path: String { get }
    var method: String { get }
    var parameters: [URLQueryItem] { get }
    var body: Data? { get }
    var headers: [String : String] { get }
}

extension ApiRouter {
    var jsonEncoder: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }
}
