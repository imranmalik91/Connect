//
//  View+Extensions.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

extension View {
    func animate(using animation: Animation = .easeInOut(duration: 1), _ action: @escaping () -> Void) -> some View {
        onAppear {
            withAnimation(animation) {
                action()
            }
        }
    }
}

extension View {
    func textFieldModifier(fontSize: CGFloat = 14, backgroundColor: Color = .blue, textColor: Color = .white) -> some View {
        self.modifier(TextFieldModifier(fontSize: fontSize, backgroundColor: backgroundColor, textColor: textColor))
    }
}
