//
//  HotelRoomsView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelRoomsView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @StateObject var viewModel = HotelRoomsViewModel()
    
    let hotelName: String
    
    var body: some View {
        Group {
            switch viewModel.loadState {
            case .success(let roomsData):
                roomsView(roomsData.rooms)
            case .failure(let error):
                Text(error.localizedDescription)
            case .none:
                ProgressView()
            }
        }
        .onAppear {
            viewModel.fetchRooms()
        }
    }
}

struct HotelRoomsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelRoomsView(hotelName: "Hello, World!")
    }
}

extension HotelRoomsView {
    @ViewBuilder
    private func roomsView(_ rooms: [Room]) -> some View {
        ScrollView {
            ForEach(rooms, id: \.self) { room in
                RoomSection(viewModel: .init(room)) {
                    coordinator.push(.booking)
                }
            }
        }
        .padding(.top, 8)
        .background(Color(red: 0.965, green: 0.965, blue: 0.976))
        .navigationTitle(hotelName)
    }
}
