//
//  Formatter+Extension.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        return formatter
    }()
}
