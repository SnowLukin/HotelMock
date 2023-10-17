//
//  HotelMordaDescriptionSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMordaDescriptionSection: View {
    
    let viewModel: HotelMordaDescriptionSectionModel
    
    var body: some View {
        BaseSection {
            TitleView(viewModel.sectionTitle)
                .padding(.bottom, 16)
            TagsGrid(items: viewModel.tagItems)
                .padding(.bottom, 12)
            TitleView(viewModel.hotelDescription, style: .body)
                .padding(.bottom, 16)
            HotelSpecsListView(items: viewModel.specItems)
        }
    }
}
