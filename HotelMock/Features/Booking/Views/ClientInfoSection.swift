//
//  ClientInfoSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct ClientInfoSection: View {
    
    @Binding var numberTFText: String
    @Binding var mailTFText: String
    
    private let hintText = """
    Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту
    """
    
    var body: some View {
        BaseSection {
            TitleView("Информация о покупателе")
                .padding(.bottom, 20)
            TextInputField(
                "Номер телефона",
                type: .phone,
                text: $numberTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                "Почта",
                text: $mailTFText
            )
            .padding(.bottom, 8)
            TitleView(hintText, style: .caption)
                .foregroundColor(Color(red: 0.51, green: 0.529, blue: 0.588))
        }
    }
}
