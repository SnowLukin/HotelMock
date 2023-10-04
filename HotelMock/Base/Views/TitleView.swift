//
//  TitleView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct TitleView: View {
    
    let text: String
    let style: FontStyle
    
    init(_ text: String, style: FontStyle = .title) {
        self.text = text
        self.style = style
    }
    
    var body: some View {
        Text(text)
            .font(style.font)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView("Hello, World!")
    }
}
