//
//  PostImageView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct PostImageView: View {
    let post: Post

    var body: some View {
        Image(post.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width.calculateHeight(), alignment: .center)
            .clipped()
    }
}
