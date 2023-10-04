//
//  RoomsApiDispatcher.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import Foundation

final class RoomsApiDispatcher: ApiDispatcher {
    func fetchRooms(
        apiRouter: RoomsApiRouter,
        completion: @escaping (Result<Rooms, ApiError>) -> Void
    ) {
        fetchData(apiRouter: apiRouter, completion: completion)
    }
}
