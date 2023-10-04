//
//  HotelMordaInfoSectionModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMordaInfoSectionModel {
    
    let imageUrls: [String]
    let ratingTitle: String
    let name: String
    let adress: String
    let price: String
    let priceText: String
    
    init(_ hotel: Hotel) {
        imageUrls = hotel.imageUrls
        ratingTitle = "\(hotel.rating) \(hotel.ratingName)"
        name = hotel.name
        adress = hotel.adress
        price = "от " + hotel.minimalPrice.formattedWithSeparator + " ₽"
        priceText = hotel.priceForIt
    }
    
    func onAdressClicked() {
        
    }
}
