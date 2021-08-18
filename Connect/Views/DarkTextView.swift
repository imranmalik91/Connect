//
//  DarkTextView.swift
//  Connect
//
//  Created by imran malik on 18/08/21.
//

import SwiftUI

struct DarkTextView: View {
    let text: String
    var size: CGFloat = 20

    var body: some View {
        Text(text)
            .font(.system(size: size, weight: .bold, design: .rounded))
    }
}

struct DarkTextView_Previews: PreviewProvider {
    static var previews: some View {
        DarkTextView(text: "Hello", size: 30)
    }
}
