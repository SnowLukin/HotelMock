//
//  BackButton.swift
//  HotelMock
//
//  Created by Snow Lukin on 03.10.2023.
//

import SwiftUI

struct BackButton: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.pop()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
        }
        .frame(width: 32)
    }
}
