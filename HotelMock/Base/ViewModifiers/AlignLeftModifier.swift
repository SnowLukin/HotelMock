//
//  AlignLeftModifier.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct AlignLeftModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            content
            Spacer()
        }
    }
}

extension View {
    func leftAlign() -> some View {
        modifier(AlignLeftModifier())
    }
}
