//
//  BorderedButton.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

struct BorderedButton: View {
    @State var title: String
    var action: (() -> Void)?    

    var body: some View {
        GeometryReader { geometry in
            Button(title) {
                self.action?()
            }
            .font(.buttonTitle)
            .frame(width: geometry.size.width, height: geometry.size.height)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.primary)
            .overlay(Capsule().stroke(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing), lineWidth: 5.0))
        }
    }
}

struct BorderedButton_Previews: PreviewProvider {
    static var previews: some View {
        BorderedButton(title: "Imran") { }
    }
}
