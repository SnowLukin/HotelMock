//
//  RoomsMocks.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum RoomsMocks {
    static func room(id: Int = 1) -> Room {
        Room(
            peculiarities: [
                "Включен только завтрак",
                "Кондиционер"
            ],
            id: id,
            imageUrls:  [
                "https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg",
                "https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o=",
                "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg"
            ],
            name: "Стандартный номер с видом на бассейн",
            price: 186600,
            pricePer: "За 7 ночей с перелетом"
        )
    }
    
    static func rooms() -> Rooms {
        Rooms(rooms: [
            room(id: 1),
            room(id: 2),
            room(id: 3)
        ])
    }
}
