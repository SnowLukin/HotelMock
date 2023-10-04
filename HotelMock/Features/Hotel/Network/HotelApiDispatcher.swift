//
//  HotelApiDispatcher.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

final class HotelApiDispatcher: ApiDispatcher {
    func fetchHotels(
        apiRouter: HotelApiRouter,
        completion: @escaping (Result<Hotel, ApiError>) -> Void
    ) {
        fetchData(apiRouter: apiRouter, completion: completion)
    }
}
