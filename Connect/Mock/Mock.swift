//
//  Mock.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct Mock {
    private static let description = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit",
                                      "sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam",
                                      "quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"]

    private static let titles: [String] = ["Lorem ipsum dolor sit amet",
                                 "Sed do eiusmod tempor incididunt ut labore",
                                 "Sed ut perspiciatis unde omnis",
                                 "Et dolore magna aliqua",
                                 "Ut enim ad minima veniam"]

    static var randomTitle: String {
        return titles.randomElement() ?? "Lorem ipsum dolor sit amet"
    }

    static var randomDescription: String {
        return description.randomElement() ?? "No description"
    }

    static var posts = [Post(id: 1, postedBy: User(id: 100, firstName: "Imran", lastName: "Malik", profilePic: "1"),  imageName: "1", title: randomTitle, description: randomDescription, likes: "20", myLike: true),
                 Post(id: 2, postedBy: User(id: 101, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "2", title: randomTitle, description: randomDescription, likes: "100", myLike: false),
                 Post(id: 3,postedBy: User(id: 102, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "3", title: randomTitle, description: randomDescription, likes: "24", myLike: false),
                 Post(id: 4,postedBy: User(id: 103, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "4", title: randomTitle, description: randomDescription, likes: "50", myLike: true),
                 Post(id: 5,postedBy: User(id: 104, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "5", title: randomTitle, description: randomDescription, likes: "150", myLike: false),
                 Post(id: 6,postedBy: User(id: 105, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "6", title: randomTitle, description: randomDescription, likes: "45", myLike: true),
                 Post(id: 7,postedBy: User(id: 106, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "7", title: randomTitle, description: randomDescription, likes: "87", myLike: false),
                 Post(id: 8,postedBy: User(id: 107, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "8", title: randomTitle, description: randomDescription, likes: "67", myLike: false),
                 Post(id: 9,postedBy: User(id: 108, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "9", title: randomTitle, description: randomDescription, likes: "56", myLike: false),
                 Post(id: 10,postedBy: User(id: 109, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "10", title: randomTitle, description: randomDescription, likes: "63", myLike: true),
                 Post(id: 11,postedBy: User(id: 110, firstName: "Imran", lastName: "Malik", profilePic: "1"), imageName: "11", title: randomTitle, description: randomDescription, likes: "147", myLike: false)]
}
