//
//  PostDescriptionView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct LightTextView: View {
    let text: String
    var size: CGFloat = 15
    var lineLimit: Int = 2

    var body: some View {
        Text(text)
            .font(.system(size: size, weight: .regular, design: .rounded))
            .foregroundColor(.gray)
            .lineLimit(lineLimit)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct LightTextView_Previews: PreviewProvider {
    static var previews: some View {
        LightTextView(text: "post")
    }
}
