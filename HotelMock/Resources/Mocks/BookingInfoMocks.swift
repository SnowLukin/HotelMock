//
//  BookingInfoMocks.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum BookingInfoMocks {
    static func bookingInfo() -> Booking {
        Booking(
            id: 1,
            hotelName: "Лучший пятизвездочный отель в Хургаде, Египет",
            hotelAdress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
            horating: 5,
            ratingName: "Превосходно",
            departure: "Москва",
            arrivalCountry: "Египет, Хургада",
            tourDateStart: "19.09.2023",
            tourDateStop: "27.09.2023",
            numberOfNights: 7,
            room: "Люкс номер с видом на море",
            nutrition: "Все включено",
            tourPrice: 289400,
            fuelCharge: 9300,
            serviceCharge: 2150
        )
    }
}
