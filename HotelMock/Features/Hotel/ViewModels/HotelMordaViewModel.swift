//
//  HotelMordaViewModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

final class HotelMordaViewModel: ObservableObject {
    @Published var loadState: Result<Hotel, ApiError>?
    
    func fetchHotel() {
        let dispatcher = HotelApiDispatcher()
        dispatcher.fetchHotels { [weak self] result in
            DispatchQueue.main.async {
                self?.loadState = result
            }
        }
    }
}
