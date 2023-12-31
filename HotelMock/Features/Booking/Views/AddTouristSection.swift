//
//  AddTouristSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct AddTouristSection: View {
    
    let action: () -> Void
    
    var body: some View {
        BaseSection {
            HStack {
                TitleView("Добавить туриста")
                AddTouristButton {
                    action()
                }
            }
        }
    }
}
