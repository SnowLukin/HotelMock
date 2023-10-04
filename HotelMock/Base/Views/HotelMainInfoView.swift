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

struct HotelMainInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HotelMainInfoView(
            ratingTitle: "5 Превосходно",
            name: "Лучший пятизвездочный отель в Хургаде, Египет",
            adress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет"
        ) {}
    }
}
