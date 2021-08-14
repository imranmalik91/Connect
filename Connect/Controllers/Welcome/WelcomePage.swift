//
//  WelcomePage.swift
//  Connect
//
//  Created by imran malik on 11/08/21.
//

import SwiftUI

struct WelcomePage: View {
    @State private var navigation: NavigationLinks? = nil


    var body: some View {
        GeometryReader { geo in
        NavigationView {
                VStack {
                    Spacer()
                    addLogo
                    addAppTitle
                    Spacer()
                    Spacer()
                    Spacer()
                    addLogin(geo)
                    addSignup(geo)
                    addNavigations()
                }
            }
        }
    }

    func addNavigations() -> some View {
        NavigationLink(destination: LoginView(), tag: NavigationLinks.login, selection: $navigation) {
            EmptyView()
        }
    }

    // MARK: - Variable to add logo view
    var addLogo: some View {
        LogoView()
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

    // MARK: - Variable to add title view
    var addAppTitle: some View {
        Text("Connect")
            .font(.appLogo)
        .foregroundColor(.primary)
    }

    // MARK: - Function to add login button
    func addLogin(_ geo: GeometryProxy) -> some View {
        FilledButton(title: "Login") {
            navigation = .login
        }
        .frame(width: geo.size.width - Spacing.leftPadding * 2, height: Spacing.buttonHeight, alignment: .center)
    }

    // MARK: - Function to add signup button
    func addSignup(_ geo: GeometryProxy) -> some View {
        BorderedButton(title: "Signup") {

        }
        .frame(width: geo.size.width - Spacing.leftPadding * 2, height: Spacing.buttonHeight, alignment: .center)
    }

}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomePage()
        }
    }
}
