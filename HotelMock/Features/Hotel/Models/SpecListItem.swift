//
//  SpecListItem.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

struct SpecListItem: Identifiable {
    var id: UUID = UUID()
    
    let title: String
    let text: String
    let image: Image?
}
