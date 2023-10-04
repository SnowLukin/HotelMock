//
//  TagModifier.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct TagModifier: ViewModifier {
    let foregroundColor: Color
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(FontStyle.headline.font)
            .foregroundColor(foregroundColor)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(backgroundColor)
            .cornerRadius(5)
    }
}

extension View {
    func tagView(foregroundColor: Color, backgroundColor: Color) -> some View {
        modifier(TagModifier(foregroundColor: foregroundColor, backgroundColor: backgroundColor))
    }
}
