//
//  HotelMordaView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMordaView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @StateObject var viewModel = HotelMordaViewModel()
    
    var body: some View {
        Group {
            switch viewModel.loadState {
            case .success(let hotel):
                hotelView(hotel)
            case .failure(let error):
                Text("Error: \(error.localizedDescription)")
            case .none:
                ProgressView()
            }
        }
        .onAppear {
            viewModel.fetchHotel()
        }
    }
}

extension HotelMordaView {
    @ViewBuilder
    private func hotelView(_ hotel: Hotel) -> some View {
        ScrollView {
            HotelMordaInfoSection(viewModel: .init(hotel))
            HotelMordaDescriptionSection(viewModel: .init(hotel))
            .padding(.bottom, 75)
        }
        .padding(.top, 8)
        .background(Color(red: 0.965, green: 0.965, blue: 0.976))
        .bottomButton(title: "К выбору номера") {
            coordinator.push(.rooms(hotelName: hotel.name))
        }
        .navigationTitle("Отель")
        .navigationBarTitleDisplayMode(.inline)
    }
}
