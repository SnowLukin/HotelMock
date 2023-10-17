//
//  RatingView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct RatingView: View {
    
    let ratingTitle: String
    
    var body: some View {
        HStack {
            HStack(spacing: 2) {
                Image("star.filled.yellow")
                Text(ratingTitle)
                    .font(FontStyle.headline.font)
                .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color(red: 1, green: 0.78, blue: 0, opacity: 0.2))
            .cornerRadius(5)
            
            Spacer()
        }
    }
}
