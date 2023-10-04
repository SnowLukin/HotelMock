//
//  Coordinator.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import SwiftUI

final class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .hotel:
            HotelMordaView()
        case .rooms(let hotelName):
            HotelRoomsView(hotelName: hotelName)
                .customBackButton()
        case .booking:
            BookingView()
                .customBackButton()
        case .transaction:
            SuccessfulTransactionView()
                .customBackButton()
        }
    }
}
