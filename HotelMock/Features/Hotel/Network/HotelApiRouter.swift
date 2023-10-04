//
//  HotelApiRouter.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum HotelApiRouter: ApiRouter {
    
    case getHotel
    
    var host: String {
        switch self {
        case .getHotel:
            return "run.mocky.io"
        }
    }
    
    var scheme: String {
        switch self {
        case .getHotel:
            return "https"
        }
    }
    
    var path: String {
        switch self {
        case .getHotel:
            return "/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
        }
    }
    
    var method: String {
        switch self {
        case .getHotel:
            return "GET"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getHotel:
            return []
        }
    }
    
    var body: Data? {
        switch self {
        case .getHotel:
            return nil
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .getHotel:
            return [:]
        }
    }
}
