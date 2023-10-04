//
//  AppButtonView.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct AppButtonView: View {
    
    let text: String
    let action: () -> Void
    
    init(_ text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(FontStyle.headline.font)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
        }
        .padding()
        .background(Color(red: 0.052, green: 0.446, blue: 0.999))
        .cornerRadius(15)
    }
}

struct AppButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AppButtonView("Hello, World!") {}
    }
}
