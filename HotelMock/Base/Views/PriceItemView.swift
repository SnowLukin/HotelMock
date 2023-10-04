//
//  PriceItemView.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct PriceItemView: View {
    
    let item: BookingDataItem
    let isHighlighted: Bool
    
    var body: some View {
        HStack {
            Text(item.key)
                .font(FontStyle.body.font)
                .foregroundColor(Color(red: 0.51, green: 0.529, blue: 0.588))
            Spacer()
            Text(item.value)
                .font(
                    isHighlighted
                    ? FontStyle.semiboldBody.font
                    : FontStyle.body.font
                )
                .foregroundColor(isHighlighted ? .blue : .black)
        }
    }
}

struct PriceItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PriceItemView(item: .init(key: "Hello", value: "World!"), isHighlighted: false)
            Divider()
            PriceItemView(item: .init(key: "Hello", value: "World!"), isHighlighted: true)
        }.padding()
    }
}
