//
//  AddTouristButton.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct AddTouristButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button {
            withAnimation {
                action()
            }
        } label: {
            Image(systemName: "plus")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 32, height: 32)
        .background(.blue)
        .cornerRadius(6)
        .buttonStyle(.plain)
    }
}
