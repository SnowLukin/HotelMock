//
//  FontStyle.swift
//  HotelMock
//
//  Created by Snow Lukin on 01.10.2023.
//

import SwiftUI

enum FontStyle {
    case largeTitle
    case title
    case subtitle
    case headline
    case subheadline
    case body
    case semiboldBody
    case link
    case caption
    case tiny
    
    var font: Font {
        switch self {
        case .largeTitle:
            return Font.custom("SFProDisplay-Semibold", fixedSize: 30)
        case .title:
            return Font.custom("SFProDisplay-Medium", fixedSize: 22)
        case .subtitle:
            return Font.custom("SFProDisplay-Medium", fixedSize: 20)
        case .headline:
            return Font.custom("SFProDisplay-Medium", fixedSize: 16)
        case .subheadline:
            return Font.custom("SFProDisplay-Regular", fixedSize: 17)
        case .body:
            return Font.custom("SFProDisplay-Regular", fixedSize: 16)
        case .semiboldBody:
            return Font.custom("SFProDisplay-Semibold", fixedSize: 16)
        case .link:
            return Font.custom("SFProDisplay-Medium", fixedSize: 14)
        case .caption:
            return Font.custom("SFProDisplay-Regular", fixedSize: 14)
        case .tiny:
            return Font.custom("SFProDisplay-Regular", fixedSize: 12)
        }
    }
}
