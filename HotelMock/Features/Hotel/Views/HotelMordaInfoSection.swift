//
//  HotelMordaInfoSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMordaInfoSection: View {
    
    let viewModel: HotelMordaInfoSectionModel
    
    var body: some View {
        BaseSection {
            PageView(imageUrls: viewModel.imageUrls)
                .padding(.bottom, 16)
            HotelMainInfoView(
                ratingTitle: viewModel.ratingTitle,
                name: viewModel.name,
                adress: viewModel.adress
            ) {
                viewModel.onAdressClicked()
            }
            .padding(.bottom, 16)
            PriceTitleView(viewModel.price, text: viewModel.priceText)
        }
    }
}

struct HotelMordaInfoSection_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            HotelMordaInfoSection(
                viewModel: HotelMordaInfoSectionModel(HotelMocks.hotel())
            )
        }
    }
}
