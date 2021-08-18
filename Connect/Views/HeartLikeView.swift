//
//  HeartLikeView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct HeartLikeView: View {
    var isLiked: Bool

    var body: some View {
        Button(action: {
            print("Toggeled")
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .foregroundColor(isLiked ? .red : .black)
        })
        .buttonStyle(PlainButtonStyle()) 
        .accentColor(.black)
    }
}

struct HeartLikeView_Previews: PreviewProvider {
    static var previews: some View {
        HeartLikeView(isLiked: false)
    }
}
