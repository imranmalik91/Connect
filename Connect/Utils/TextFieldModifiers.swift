//
//  TextFieldModifiers.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    let fontSize: CGFloat
    let backgroundColor: Color
    let textColor: Color

    func body(content: Content) -> some View {
        content
            .font(Font.system(size: fontSize))
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor))
            .foregroundColor(textColor)
            .padding()
    }
}
