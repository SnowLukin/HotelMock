//
//  HotelMordaDescriptionSectionModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMordaDescriptionSectionModel {
    let sectionTitle: String
    let tagItems: [String]
    let hotelDescription: String
    let specItems: [SpecListItem]
    
    init(_ hotel: Hotel) {
        sectionTitle = "Об отеле"
        tagItems = hotel.aboutTheHotel.peculiarities
        hotelDescription = hotel.aboutTheHotel.description
        specItems = [
            SpecListItem(
                title: "Удобства",
                text: "Самое необходимое",
                image: Images.emojiHappy
            ),
            SpecListItem(
                title: "Что включено",
                text: "Самое необходимое",
                image: Images.tickSquare
            ),
            SpecListItem(
                title: "Что не включено",
                text: "Самое необходимое",
                image: Images.closeSquare
            )
        ]
    }
}
