//
//  Numeric+Extension.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

extension Numeric {
    var formattedWithSeparator: String {
        Formatter.withSeparator.string(for: self) ?? ""
    }
}
