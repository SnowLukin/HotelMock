//
//  RoomsApiRouter.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import Foundation

enum RoomsApiRouter: ApiRouter {
    
    case getRooms
    
    var host: String {
        switch self {
        case .getRooms:
            return "run.mocky.io"
        }
    }
    
    var scheme: String {
        switch self {
        case .getRooms:
            return "https"
        }
    }
    
    var path: String {
        switch self {
        case .getRooms:
            return "/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd"
        }
    }
    
    var method: String {
        switch self {
        case .getRooms:
            return "GET"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getRooms:
            return []
        }
    }
    
    var body: Data? {
        switch self {
        case .getRooms:
            return nil
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .getRooms:
            return [:]
        }
    }
}
