//
//  ClickableTagView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct ClickableTagView: View {
    
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        HStack(spacing: 2) {
            Text(text)
            Image(systemName: "chevron.right")
        }
        .tagView(
            foregroundColor: Color(red: 0.051, green: 0.447, blue: 1),
            backgroundColor: Color(red: 0.051, green: 0.447, blue: 1, opacity: 0.1)
        )
    }
}
