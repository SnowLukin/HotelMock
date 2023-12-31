//
//  HotelRoomsViewModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

final class HotelRoomsViewModel: ObservableObject {
    @Published var loadState: Result<Rooms, ApiError>?
    
    func fetchRooms() {
        let dispatcher = HotelApiDispatcher()
        dispatcher.fetchRooms { [weak self] result in
            DispatchQueue.main.async {
                self?.loadState = result
            }
        }
    }
}
