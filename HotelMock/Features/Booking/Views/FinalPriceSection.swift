//
//  FinalPriceSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct FinalPriceSection: View {

    let viewModel: FinalPriceSectionModel

    var body: some View {
        BaseSection {
            ForEach(viewModel.items) { item in
                PriceItemView(
                    item: item,
                    isHighlighted: item.id == viewModel.items.last?.id
                )
                .padding(.top, item.id == viewModel.items.first?.id ? 0 : 16)
            }
        }
    }
}
