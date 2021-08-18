//
//  PostRow.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct PostRow: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 0) {
                PostUserView(user: post.postedBy)
                    .frame(width: 50, height: 50, alignment: .center)
                VStack(alignment: .leading, spacing: 0) {
                    DarkTextView(text: post.postedBy.firstName)
                    LightTextView(text: "Indore", size: 14)
                }
                .padding(.leading, 8)
            }
            .padding(8)
            PostImageView(post: post)

            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading, spacing: 0){
                    DarkTextView(text: post.title, size: 16)
                    LightTextView(text: post.description, size: 12)
                        .padding(.bottom, 6)
                    LightTextView(text: post.postedDate,size: 10)
                }.padding(.leading, 8)
                Spacer()
                VStack(alignment: .trailing, spacing: 0) {
                    HStack(alignment: .center, spacing: 0) {
                        DarkTextView(text: post.likes, size: 12)
                        LightTextView(text: "Likes", size: 10)
                    }
                    HeartLikeView(isLiked: post.myLike)
                        .frame(width: 40, height: 40)
                }
                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 16))
            }
            .padding(.bottom, 8)
            .padding(.top, 6)
            Divider()
        }
        .padding(0)
    }
}
