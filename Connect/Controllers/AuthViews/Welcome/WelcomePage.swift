//
//  WelcomePage.swift
//  Connect
//
//  Created by imran malik on 11/08/21.
//

import SwiftUI

struct WelcomePage: View {
    @State private var navigation: NavigationLinks? = nil
    @Binding var logout: Bool

    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                Spacer()
                addLogo
                addAppTitle
                Spacer()
                Spacer()
                Spacer()
                addLogin(geo)
                addSignup(geo)
                    .padding(.bottom, 20)
                addNavigations()
            }
            .padding(.leading, 20)
        }
    }

    func addNavigations() -> some View {
        Group {
            NavigationLink(destination: LoginView(logout: $logout), tag: NavigationLinks.login, selection: $navigation) {
                EmptyView()
            }

            NavigationLink(destination: SignupView(), tag: NavigationLinks.signUp, selection: $navigation) {
                EmptyView()
            }

            // NOTE: Below is added to solve a auto popup bug in SwiftUI. Need to remove once the its fixed by Apple.
            NavigationLink(destination: EmptyView()) {
                EmptyView()
            }
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
        .frame(width: abs(geo.size.width - Spacing.leftPadding * 2), height: Spacing.buttonHeight, alignment: .center)
    }

    // MARK: - Function to add signup button
    func addSignup(_ geo: GeometryProxy) -> some View {
        BorderedButton(title: "Signup") {
            navigation = .signUp
        }
        .frame(width: abs(geo.size.width - Spacing.leftPadding * 2), height: Spacing.buttonHeight, alignment: .center)
    }

}

//struct WelcomePage_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            WelcomePage(isPresented: <#Binding<Bool>#>)
//        }
//    }
//}
