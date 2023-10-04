//
//  BaseCell.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct BaseSection<Content: View>: View {
    
    @ViewBuilder let content: Content
    private let verticalPadding: CGFloat
    
    init(
        verticalPadding: CGFloat = 16,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content()
        self.verticalPadding = 16
    }
    
    var body: some View {
        VStack(spacing: 0) {
            content
        }
        .frame(maxWidth: .infinity)
        .padding(verticalPadding)
        .background(.white)
        .cornerRadius(12)
    }
}

struct BaseSection_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            BaseSection {
                Text("Hellow")
                Text("World")
            }
        }
    }
}
