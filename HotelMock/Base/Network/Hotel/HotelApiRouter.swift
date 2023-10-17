//
//  HotelApiRouter.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum HotelApiRouter: ApiRouter {
    
    case getHotel
    case getRooms
    case getBooking
    
    var host: String {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return "run.mocky.io"
        }
    }
    
    var scheme: String {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return "https"
        }
    }
    
    var path: String {
        switch self {
        case .getHotel:
            return "/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
        case .getRooms:
            return "/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd"
        case .getBooking:
            return "/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8"
        }
    }
    
    var method: String {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return "GET"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return []
        }
    }
    
    var body: Data? {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return nil
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .getHotel, .getRooms, .getBooking:
            return [:]
        }
    }
}
