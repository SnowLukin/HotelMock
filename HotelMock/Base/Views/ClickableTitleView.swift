//
//  ClickableTitleView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct ClickableTitleView: View {
    
    let title: String
    let action: () -> Void
    
    init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                TitleView(title, style: .link)
                    .foregroundColor(Color(red: 0.051, green: 0.447, blue: 1))
            }
            Spacer()
        }
    }
}

struct ClickableTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ClickableTitleView("Hello, World!") {}
    }
}
