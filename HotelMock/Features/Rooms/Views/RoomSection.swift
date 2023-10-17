//
//  RoomSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct RoomSection: View {
    
    let viewModel: HotelRoomSectionModel
    let action: () -> Void
    
    var body: some View {
        BaseSection {
            PageView(imageUrls: viewModel.imageUrls)
                .padding(.bottom, 8)
            TitleView(viewModel.roomName)
                .padding(.bottom, 8)
            TagsGrid(items: viewModel.tags)
                .padding(.bottom, 8)
            ClickableTagView(viewModel.clickableTagTitle)
                .leftAlign()
                .padding(.bottom, 16)
            PriceTitleView(viewModel.price, text: viewModel.priceText)
                .padding(.bottom, 16)
            AppButtonView(viewModel.buttonTitle, action: action)
        }
    }
}
