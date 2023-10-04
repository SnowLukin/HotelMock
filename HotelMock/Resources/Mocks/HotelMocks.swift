//
//  Hotel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

enum HotelMocks {
    static func hotel() -> Hotel {
        Hotel(
            id: 0,
            name: "Лучший пятизвездочный отель в Хургаде, Египет",
            adress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
            minimalPrice: 134268,
            priceForIt: "За тур с перелётом",
            rating: 5,
            ratingName: "Превосходно",
            imageUrls: [
                "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
            ],
            aboutTheHotel: HotelAdditionalInfo(
                description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
                peculiarities: [
                    "Бесплатный Wifi на всей территории отеля",
                    "1 км до пляжа",
                    "Бесплатный фитнес-клуб",
                    "20 км до аэропорта"
                ]
            )
        )
    }
}
