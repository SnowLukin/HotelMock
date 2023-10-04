//
//  BookingDataSectionModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct BookingDataSectionModel {
    let items: [BookingDataItem]
    
    init(_ bookingInfo: Booking) {
        items = [
            .init(key: "Вылет из", value: bookingInfo.departure),
            .init(key: "Страна, Город", value: bookingInfo.arrivalCountry),
            .init(key: "Даты", value: bookingInfo.tourDateStart + "–" + bookingInfo.tourDateStop),
            .init(key: "Кол-во ночей", value: String(bookingInfo.numberOfNights)),
            .init(key: "Отель", value: bookingInfo.hotelName),
            .init(key: "Номер", value: bookingInfo.room),
            .init(key: "Питание", value: bookingInfo.nutrition)
        ]
    }
}
