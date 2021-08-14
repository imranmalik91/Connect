//
//  CustomTextField.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

struct TextFieldView: View {
    // Constants, so all "TextFields will be the same in the app"
    let fontSize: CGFloat
    let backgroundColor: Color
    let textColor: Color

    @Binding var field: String
    var placeholder: String

    init(field: Binding<String>, fontSize: CGFloat = 14, backgroundColor: Color = .blue, textColor:Color = .primary, placeholder: String) {
        self._field = field
        self.fontSize = fontSize
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.placeholder = placeholder
    }

    var body: some View {
        GeometryReader { geometry in
            TextField(placeholder, text: $field)
                .font(Font.system(size: fontSize))
                .foregroundColor(textColor)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 8)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing), lineWidth: 1.0))
                .disableAutocorrection(true)
                .autocapitalization(.none)
        }
    }
}

struct SecureFieldView: View {
    let fontSize: CGFloat
    let backgroundColor: Color
    let textColor: Color

    @Binding var field: String
    var placeholder: String

    init(field: Binding<String>, fontSize: CGFloat = 14, backgroundColor: Color = .blue, textColor:Color = .primary, placeholder: String) {
        self._field = field
        self.fontSize = fontSize
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.placeholder = placeholder
    }

    var body: some View {
        GeometryReader { geometry in
            SecureField(placeholder, text: $field)
                .font(Font.system(size: fontSize))
                .foregroundColor(textColor)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 8)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing), lineWidth: 1.0))
                .disableAutocorrection(true)

        }
    }
}
