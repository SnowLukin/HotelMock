//
//  TextInputField.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct TextInputField: View {
    
    enum TextInputFieldType {
        case normal
        case phone
    }
    
    @Binding var text: String
    let name: String
    let type: TextInputFieldType
    
    @State var isFocused = false
    
    var isOpenMode: Bool {
        isFocused || !text.isEmpty
    }
    
    init(_ name: String, type: TextInputFieldType = .normal, text: Binding<String>) {
        self.name = name
        self._text = text
        self.type = type
    }
    
    var body: some View {
        VStack(spacing: 0) {
            if !text.isEmpty {
                dummy
            }
            ZStack(alignment: .leading) {
                placeholder
                textField
            }
        }
        .animation(.default, value: text)
        .padding(.horizontal, 16)
        .frame(height: 52)
        .background(Color(red: 0.965, green: 0.965, blue: 0.976))
        .cornerRadius(10)
    }
}

struct TextInputField_Previews: PreviewProvider {
    @State static private var text = ""
    static var previews: some View {
        ZStack {
            Color.black
            TextInputField("Hello, World!", text: $text)
        }
    }
}

extension TextInputField {
    private var placeholder: some View {
        Text(name)
            .font(FontStyle.body.font)
            .foregroundColor(Color(red: 0.661, green: 0.672, blue: 0.717))
            .offset(y: isOpenMode ? -25 : 0)
            .scaleEffect(isOpenMode ? 0.75 : 1, anchor: .leading)
    }
    
    private var textField: some View {
        Group {
            switch type {
            case .normal:
                TextField("", text: $text)
            case .phone:
                UIKitPhoneTextField(text: $text)
            }
        }
            .font(FontStyle.body.font)
            .foregroundColor(Color(red: 0.079, green: 0.077, blue: 0.167))
            .frame(height: 52)
    }
    
    private var dummy: some View {
        Text(name)
            .font(FontStyle.tiny.font)
            .foregroundColor(.clear)
    }
}
