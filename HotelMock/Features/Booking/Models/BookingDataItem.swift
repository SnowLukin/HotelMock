//
//  BookingDataItem.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

struct BookingDataItem: Identifiable {
    var id = UUID()
    
    var key: String
    var value: String
}
