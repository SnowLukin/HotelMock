//
//  BookingViewModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import Foundation

final class BookingViewModel: ObservableObject {
    @Published var touristSectionModels: [TouristSectionModel] = []
    
    @Published var loadingState: Result<Booking, ApiError>?
    
    @Published var showAlert = false
    
    // MARK: TFs
    @Published var numberTFText = ""
    @Published var mailTFText = ""
    
    func addTourist() {
        touristSectionModels.append(.init(touristSectionModels.count + 1))
    }
    
    func fetchBookingInfo() {
        let dispatcher = BookingApiDispatcher()
        dispatcher.fetchBookingInfo(apiRouter: .getBooking) { [weak self] result in
            DispatchQueue.main.async {
                self?.loadingState = result
                self?.touristSectionModels = [.init(1)]
            }
        }
    }
    
    func paymentButtonTitle(for booking: Booking) -> String {
        let totalPrice = booking.tourPrice + booking.fuelCharge + booking.serviceCharge
        return "Оплатить \(totalPrice.formattedWithSeparator) ₽"
    }
    
    func isTouristInfoValid() -> Bool {
        debugPrint(touristSectionModels.count)
        for model in touristSectionModels {
            if !model.isTouristInfoValid() { return false }
        }
        return true
    }
    
    func isPersonalInfoValid() -> Bool {
        isNumberValid() && isEmailValid()
    }
    
    func isNumberValid() -> Bool {
        let phoneNumberPattern = "^[0-9]{11,11}$"
        let phoneNumberPredicate = NSPredicate(format: "SELF MATCHES %@", phoneNumberPattern)
        let phoneNumber = numberTFText.filter { $0.isNumber }
        let evaluation = phoneNumberPredicate.evaluate(with: phoneNumber)
        return evaluation
    }
    
    func isEmailValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let evaluation = emailPredicate.evaluate(with: mailTFText)
        return evaluation
    }
}
