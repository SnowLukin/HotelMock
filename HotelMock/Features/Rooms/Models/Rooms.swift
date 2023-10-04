//
//  Rooms.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

struct Room: Codable, Hashable {
    let peculiarities: [String]
    let id: Int
    let imageUrls: [String]?
    let name: String
    let price: Int
    let pricePer: String?

    enum CodingKeys: String, CodingKey {
        case peculiarities
        case id
        case imageUrls = "image_urls"
        case name
        case price
        case pricePer = "price_per"
    }
}

struct Rooms: Codable {
    let rooms: [Room]
}
