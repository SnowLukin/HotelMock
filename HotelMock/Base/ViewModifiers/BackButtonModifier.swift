//
//  BackButtonModifier.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import SwiftUI

struct BackButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
    }
}

extension View {
    func customBackButton() -> some View {
        self.modifier(BackButtonModifier())
    }
}
