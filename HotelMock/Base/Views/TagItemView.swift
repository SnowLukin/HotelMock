//
//  TagItemView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct TagItemView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .tagView(
                foregroundColor: Color(red: 0.51, green: 0.529, blue: 0.588),
                backgroundColor: Color(red: 0.984, green: 0.984, blue: 0.988)
            )
    }
}
