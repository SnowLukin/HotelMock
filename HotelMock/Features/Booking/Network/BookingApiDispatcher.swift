//
//  BookingApiDispatcher.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import Foundation

final class BookingApiDispatcher: ApiDispatcher {
    func fetchBookingInfo(
        apiRouter: BookingApiRouter,
        completion: @escaping (Result<Booking, ApiError>) -> Void
    ) {
        fetchData(apiRouter: apiRouter, completion: completion)
    }
}
