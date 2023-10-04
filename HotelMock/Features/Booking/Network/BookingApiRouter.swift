//
//  BookingApiRouter.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import Foundation

enum BookingApiRouter: ApiRouter {
    
    case getBooking
    
    var host: String {
        switch self {
        case .getBooking:
            return "run.mocky.io"
        }
    }
    
    var scheme: String {
        switch self {
        case .getBooking:
            return "https"
        }
    }
    
    var path: String {
        switch self {
        case .getBooking:
            return "/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8"
        }
    }
    
    var method: String {
        switch self {
        case .getBooking:
            return "GET"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getBooking:
            return []
        }
    }
    
    var body: Data? {
        switch self {
        case .getBooking:
            return nil
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .getBooking:
            return [:]
        }
    }
}
