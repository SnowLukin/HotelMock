//
//  TouristSectionModel.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

final class TouristSectionModel: ObservableObject {

    let sectionName: String
    
    let nameTFTitle: String
    let surnameTFTitle: String
    let dateOfBirthTFTitle: String
    let citizenshipTFTitle: String
    let interPassNumberTFTitle: String
    let passValidityDateTFTitle: String
    
    @Published var nameTFText = ""
    @Published var surnameTFText = ""
    @Published var dateOfBirthTFText = ""
    @Published var citizenshipTFText = ""
    @Published var interPassNumberTFText = ""
    @Published var passValidityDateTFText = ""
    
    @Published var showTextFields = true
    
    init(_ index: Int) {
        sectionName = "\(index) турист"
        
        nameTFTitle = "Имя"
        surnameTFTitle = "Фамилия"
        dateOfBirthTFTitle = "Дата рождения"
        citizenshipTFTitle = "Гражданство"
        interPassNumberTFTitle = "Номер загранпаспорта"
        passValidityDateTFTitle = "Срок действия загранпаспорта"
    }
    
    func isTouristInfoValid() -> Bool {
        if nameTFText.isTrimmedEmpty()
            || surnameTFText.isTrimmedEmpty()
            || dateOfBirthTFText.isTrimmedEmpty()
            || citizenshipTFText.isTrimmedEmpty()
            || interPassNumberTFText.isTrimmedEmpty()
            || passValidityDateTFText.isTrimmedEmpty() {
            return false
        }
        return true
    }
    
}

private extension String {
    func isTrimmedEmpty() -> Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
