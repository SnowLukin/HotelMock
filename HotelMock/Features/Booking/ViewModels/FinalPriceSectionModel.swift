//
//  FinalPriceSectionModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct FinalPriceSectionModel {
    
    var items: [BookingDataItem]
    
    init(_ bookingInfo: Booking) {
        let tourPrice = bookingInfo.tourPrice
        let fuelCharge = bookingInfo.fuelCharge
        let serviceCharge = bookingInfo.serviceCharge
        let total = tourPrice + fuelCharge + serviceCharge
        let currencyPostfix = " ₽"
        self.items = [
            .init(key: "Тур", value: tourPrice.formattedWithSeparator + currencyPostfix),
            .init(key: "Топливный сбор", value: fuelCharge.formattedWithSeparator + currencyPostfix),
            .init(key: "Сервисный сбор", value: serviceCharge.formattedWithSeparator + currencyPostfix),
            .init(key: "К оплате", value: total.formattedWithSeparator + currencyPostfix)
        ]
    }
}

