//
//  Booking.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

struct Booking: Codable {
    let id: Int
    let hotelName: String
    let hotelAdress: String
    let horating: Int
    let ratingName: String
    let departure: String
    let arrivalCountry: String
    let tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let room: String
    let nutrition: String
    let tourPrice: Int
    let fuelCharge: Int
    let serviceCharge: Int
    
    enum CodingKeys: String, CodingKey {
        case id, horating, departure, room, nutrition
        case hotelName = "hotel_name"
        case hotelAdress = "hotel_adress"
        case ratingName = "rating_name"
        case arrivalCountry = "arrival_country"
        case tourDateStart = "tour_date_start"
        case tourDateStop = "tour_date_stop"
        case numberOfNights = "number_of_nights"
        case tourPrice = "tour_price"
        case fuelCharge = "fuel_charge"
        case serviceCharge = "service_charge"
    }
}
