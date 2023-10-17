//
//  HotelApiDispatcher.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

final class HotelApiDispatcher: ApiDispatcher {
    func fetchHotels(
        completion: @escaping (Result<Hotel, ApiError>) -> Void
    ) {
        let apiRouter: HotelApiRouter = .getHotel
        fetchData(apiRouter: apiRouter, completion: completion)
    }
    
    func fetchRooms(
        completion: @escaping (Result<Rooms, ApiError>) -> Void
    ) {
        let apiRouter: HotelApiRouter = .getRooms
        fetchData(apiRouter: apiRouter, completion: completion)
    }
    
    func fetchBookingInfo(
        completion: @escaping (Result<Booking, ApiError>) -> Void
    ) {
        let apiRouter: HotelApiRouter = .getBooking
        fetchData(apiRouter: apiRouter, completion: completion)
    }
}
