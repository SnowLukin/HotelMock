//
//  ChevronButton.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct ChevronButton: View {
    
    @State private var isUp = false
    let action: () -> Void
    
    var body: some View {
        Button {
            withAnimation {
                isUp.toggle()
                action()
            }
        } label: {
            Image(systemName: "chevron.up")
                .bold()
                .foregroundColor(Color(red: 0.051, green: 0.447, blue: 1))
                .rotationEffect(isUp ? .degrees(-180) : .zero)
        }
        .frame(width: 32, height: 32)
        .background(Color(red: 0.051, green: 0.447, blue: 1, opacity: 0.1))
        .cornerRadius(6)
        .buttonStyle(.plain)
    }
}

struct ChevronButton_Previews: PreviewProvider {
    static var previews: some View {
        ChevronButton {
            
        }
    }
}
