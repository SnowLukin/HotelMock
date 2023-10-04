//
//  Page.swift
//  HotelMock
//
//  Created by Snow Lukin on 04.10.2023.
//

import Foundation

enum Page: Identifiable, Hashable {
    case hotel, booking, transaction
    case rooms(hotelName: String)
    
    var id: String {
        switch self {
        case .hotel:
            return "hotel"
        case .booking:
            return "booking"
        case .transaction:
            return "transaction"
        case .rooms(let hotelName):
            return "rooms(\(hotelName))"
        }
    }
}
