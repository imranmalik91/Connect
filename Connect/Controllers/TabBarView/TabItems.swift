//
//  TabItems.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

enum TabItems {
    case home
    case profile

    static let allTabs: [TabItems] = [.home , .profile]

    var image: some View {
        var imageName = ""
        switch self {
        case .home: imageName = "house.fill"
        case .profile: imageName = "person.crop.circle"
        }
        return Image(systemName: imageName)
            .font(.system(size: 24, weight: .bold, design: .default))
    }

    var tabView: some View {
        var view: TabItemView
        switch self {
        case .home: view = TabItemView(imageName: "house.fill", title: "Home")
        case .profile: view = TabItemView(imageName: "person.crop.circle", title: "Profile")
        }
        return view
    }
}

struct TabItemView: View {
    let imageName: String
    let title: String

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.system(size: 24, weight: .bold, design: .default))
            Text(title)
                .font(.system(size: 16, weight: .medium, design: .rounded))
        }
    }
}
