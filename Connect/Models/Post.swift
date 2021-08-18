//
//  Post.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let postedBy: User
    let imageName: String
    let title: String
    let description: String
    let likes: String
    var myLike: Bool
    let date: Date = Date().adding(hours: -Int.random(in: 1..<10))
}

extension Post {
    var postedDate: String {
        return date.timeAgoDisplay()
    }
}

extension Date {
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }

    func adding(hours: Int) -> Date {
        return Calendar.current.date(byAdding: .hour, value: hours, to: self)!
    }
}
