//
//  BookingDataItemView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct BookingDataItemView: View {
    
    let item: BookingDataItem
    
    var body: some View {
        HStack(spacing: 0) {
            Text(item.key)
                .font(FontStyle.body.font)
                .foregroundColor(Color(red: 0.51, green: 0.529, blue: 0.588))
                .frame(width: 140, alignment: .leading)
            Text(item.value)
                .font(FontStyle.body.font)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct BookingDataItemView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDataItemView(item: .init(key: "Вылет из", value: "Санкт-Петербург")
        ).padding(16)
    }
}
