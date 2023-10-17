//
//  BookingView.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct BookingView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @StateObject private var viewModel = BookingViewModel()
    
    var body: some View {
        Group {
            switch viewModel.loadingState {
            case .success(let booking):
                content(booking)
            case .failure(let error):
                Text(error.localizedDescription)
            case .none:
                ProgressView()
            }
        }
        .onAppear {
            viewModel.fetchBookingInfo()
        }
    }
}

extension BookingView {
    @ViewBuilder
    private func content(_ booking: Booking) -> some View {
        ScrollView {
            hotelMainInfoSection(booking)
            BookingDataSection(viewModel: .init(booking))
            ClientInfoSection(
                numberTFText: $viewModel.numberTFText,
                mailTFText: $viewModel.mailTFText
            )
            tourists
            AddTouristSection {
                viewModel.addTourist()
            }
            FinalPriceSection(viewModel: .init(booking))
                .padding(.bottom, 75)
        }
        .padding(.top, 8)
        .background(Color(red: 0.965, green: 0.965, blue: 0.976))
        .bottomButton(title: viewModel.paymentButtonTitle(for: booking)) {
            if viewModel.isTouristInfoValid(), viewModel.isPersonalInfoValid() {
                coordinator.push(.transaction)
            } else {
                viewModel.showAlert.toggle()
            }
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(
                title: Text("Не хватает данных :("),
                message: Text("Введите недостающую информацию"),
                dismissButton: .default(Text("OK"))
            )
        }
        .navigationTitle("Бронирование")
    }
    
    @ViewBuilder
    private func hotelMainInfoSection(_ booking: Booking) -> some View {
        BaseSection {
            HotelMainInfoView(
                ratingTitle: "\(booking.horating) \(booking.ratingName)",
                name: booking.hotelName,
                adress: booking.hotelAdress
            ) {
                // action on adress tap
            }
        }
    }
    
    private var tourists: some View {
        ForEach(viewModel.touristSectionModels.indices, id: \.self) { index in
            TouristSection(
                viewModel: viewModel.touristSectionModels[index]
            )
        }
    }
}
