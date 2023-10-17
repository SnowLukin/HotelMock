//
//  PriceTitleView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct PriceTitleView: View {
    
    let price: String
    let text: String
    
    init(_ price: String, text: String) {
        self.price = price
        self.text = text
    }
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text(price)
                .font(FontStyle.largeTitle.font)
            Text(text)
                .font(FontStyle.body.font)
                .foregroundColor(Color(red: 0.51, green: 0.529, blue: 0.588))
                .padding(.bottom, 3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
