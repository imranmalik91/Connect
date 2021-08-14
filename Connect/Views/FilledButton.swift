//
//  FilledButton.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

struct FilledButton: View {
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
            .foregroundColor(.secondary)
            .background(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .clipShape(Capsule())
        }
    }
}

struct FilledButton_Previews: PreviewProvider {
    static var previews: some View {
        FilledButton(title: "Imran") { }
    }
}

