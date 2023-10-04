//
//  Hotel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

struct Hotel: Codable {
    let id: Int
    let name: String
    let adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: HotelAdditionalInfo
    
    enum CodingKeys: String, CodingKey {
        case id, name, adress, rating
        case minimalPrice = "minimal_price"
        case priceForIt = "price_for_it"
        case ratingName = "rating_name"
        case imageUrls = "image_urls"
        case aboutTheHotel = "about_the_hotel"
    }
}

struct HotelAdditionalInfo: Codable {
    let description: String
    let peculiarities: [String]
}
