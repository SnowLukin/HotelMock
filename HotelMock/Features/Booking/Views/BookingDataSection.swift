//
//  BookingDataSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct BookingDataSection: View {
    
    let viewModel: BookingDataSectionModel
    
    var body: some View {
        BaseSection {
            VStack(spacing: 16) {
                ForEach(viewModel.items) { item in
                    BookingDataItemView(item: item)
                }
            }
        }
    }
}
