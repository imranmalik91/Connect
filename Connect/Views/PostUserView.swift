//
//  PostUserView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct PostUserView: View {
    let user: User
    var body: some View {
        GeometryReader { geo in
            HStack {
                CircleImage(user: user)
                    .frame(width: geo.size.width, height: geo.size.width, alignment: .center)
                
            }
        }
    }
}

struct PostUserView_Previews: PreviewProvider {
    static let user = Mock.posts.first?.postedBy
    static var previews: some View {
        PostUserView(user: user!)
    }
}

struct CircleImage: View {
    let user: User

    var body: some View {
        Image(user.profilePic)
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .aspectRatio(contentMode: .fill)
    }
}
