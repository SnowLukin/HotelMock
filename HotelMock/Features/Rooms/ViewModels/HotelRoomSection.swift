//
//  HotelRoomSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelRoomSectionModel {
    let imageUrls: [String]
    let roomName: String
    let tags: [String]
    let clickableTagTitle: String
    let price: String
    let priceText: String
    let buttonTitle: String
    
    init(_ room: Room) {
        imageUrls = room.imageUrls ?? []
        roomName = room.name
        tags = room.peculiarities
        clickableTagTitle = "Подробнее"
        price = room.price.formattedWithSeparator + " ₽"
        priceText = room.pricePer ?? ""
        buttonTitle = "Выбрать номер"
    }
}
