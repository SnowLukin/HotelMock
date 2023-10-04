//
//  PhoneTextField.swift
//  HotelMock
//
//  Created by Snow Lukin on 04.10.2023.
//

import SwiftUI

struct UIKitPhoneTextField: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextField {
        let textView = UITextField()
        textView.delegate = context.coordinator
        return textView
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

extension UIKitPhoneTextField {

    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: UIKitPhoneTextField

        init(_ textView: UIKitPhoneTextField) {
            self.parent = textView
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            self.parent.text = textField.text ?? ""
        }
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            guard let text = textField.text else { return false }
            let newString = (text as NSString).replacingCharacters(
                in: range,
                with: string
            )
            textField.text = formattedNumber(number: newString)
            return false
        }
        
        func formattedNumber(number: String) -> String {
            let number = number.replacingOccurrences(of: "+7", with: "")
            let cleanPhoneNumber = number.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
            let mask = "+7 (###) ###-##-##"
            var result = ""
            var index = cleanPhoneNumber.startIndex
            for ch in mask where index < cleanPhoneNumber.endIndex {
                if ch == "#" {
                    result.append(cleanPhoneNumber[index])
                    index = cleanPhoneNumber.index(after: index)
                } else {
                    result.append(ch)
                }
            }
            return result
        }
        
        private func formatedPhoneNumber(from string: String) -> String {
            let mask = "+7 (***) ***-**-**"
            var result = ""
            var index = string.startIndex
            for ch in mask where index < string.endIndex {
                if ch == "*" {
                    result.append(string[index])
                    index = string.index(after: index)
                } else {
                    result.append(ch)
                }
            }
            debugPrint(result)
            return result
        }
    }
}
