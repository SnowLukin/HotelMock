//
//  String+Extension.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import Foundation

extension String {
    func toMutableAttrString(
        _ attributes: [NSAttributedString.Key: Any]
    ) -> NSMutableAttributedString {
        return NSMutableAttributedString(
            string: self,
            attributes: attributes
        )
    }
}
