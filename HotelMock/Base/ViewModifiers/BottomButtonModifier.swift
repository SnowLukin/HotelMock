//
//  BottomButtonModifier.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct BottomButtonModifier: ViewModifier {
    let text: String
    let action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .frame(maxHeight: .infinity)
            .overlay(alignment: .bottom) {
                VStack(spacing: 0) {
                    Divider()
                        .frame(height: 1)
                        .padding(.bottom, 12)
                    AppButtonView(text, action: action)
                        .padding(.horizontal, 16)
                }.background(.white)
            }
    }
}

extension View {
    func bottomButton(title: String, action: @escaping () -> Void) -> some View {
        modifier(BottomButtonModifier(text: title, action: action))
    }
}
