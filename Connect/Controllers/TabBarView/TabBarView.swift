//
//  TabBarView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedTab: TabItems = .home
    @State var logout = false

    var body: some View {
        VStack {
            viewContainer
            Spacer()
            Divider()
            bottomBar
            presentAuth()
        }
        .onAppear(perform: {
            if UserDataManager.get(.isLoggedIn) {
                logout = false
            } else {
                logout = true
            }
        })
    }

    func presentAuth() -> some View {
        Spacer()
            .fullScreenCover(isPresented: $logout, content: {
                NavigationView {
                    WelcomePage(logout: $logout).accentColor(.primary)
                }
            })
    }

    var viewContainer: some View {
        ZStack {
            switch selectedTab {
            case .home:
                NavigationView {
                    HomeView()
                }
            default:
                NavigationView {
                    ProfileView(logout: $logout)
                }
            }
        }
    }

    var bottomBar: some View {
        HStack {
            ForEach(TabItems.allTabs, id: \.self) { item in
                Spacer()
                Button(action: {
                    selectedTab = item
                }, label: {
                    item.tabView
                        .foregroundColor(selectedTab == item ? .primary : .init(white: 0.8))
                })
                .padding(.bottom, 6)
                Spacer()
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
