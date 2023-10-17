//
//  HotelMainInfoView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct HotelMainInfoView: View {

    let ratingTitle: String
    let name: String
    let adress: String
    let onAdressClicked: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            RatingView(ratingTitle: ratingTitle)
                .padding(.bottom, 8)
            TitleView(name)
                .padding(.bottom, 8)
            ClickableTitleView(adress) {
                onAdressClicked()
            }
        }
    }
}
