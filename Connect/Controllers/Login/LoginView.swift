//
//  LoginView.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isHighlight = false
    @State private var navigation: NavigationLinks? = nil

    var body: some View {
        GeometryReader { geo in
            NavigationView {
                VStack {
                    addLogo
                    Spacer()
                    textLogin(geo)
                    textPassword(geo)
                    HStack {
                        Spacer()
                        addForgotPassword(geo)
                            .padding(.trailing, 20)
                    }
                    Spacer()
                    Spacer()
                    Spacer()

                    addLogin(geo)
                    addSignup(geo)
                }
            }
        }.navigationBarTitle("Login", displayMode: .inline)
        addNavigations()
    }

    // MARK: - Add logo
    var addLogo: some View {
        LogoView()
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

    // MARK: - Setup text fields
    func textLogin(_ geo: GeometryProxy) -> some View {
        TextFieldView(field: $email, placeholder: "Email")
            .frame(width: geo.size.width - Spacing.defaultPadding * 2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(.emailAddress)
            .padding(.bottom, 10)
    }

    func textPassword(_ geo: GeometryProxy) -> some View {
        SecureFieldView(field: $password, placeholder: "Password")
            .frame(width: geo.size.width - Spacing.defaultPadding * 2, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

    func addForgotPassword(_ geo: GeometryProxy) -> some View {
        Button(action: {
            navigation = .forgotPassword
        }, label: {
            Text("Forgot password?")
                .foregroundColor(Color.gray)
        })
    }

    // MARK: - Function to add login button
    func addLogin(_ geo: GeometryProxy) -> some View {
        FilledButton(title: "Login") {
            print("Login clicked...")
        }
        .frame(width: geo.size.width - Spacing.defaultPadding * 2, height: Spacing.buttonHeight, alignment: .center)
    }

    // MARK: - Signup
    func addSignup(_ geo: GeometryProxy) -> some View {
        Button(action: {
            navigation = .signUp
        }, label: {
            Text("Don't have an account?")
                .foregroundColor(Color.gray)
            Text("Signup")
                .bold()
                .foregroundColor(Color.black)
        })
    }

    func addNavigations() -> some View {
        Group {
            NavigationLink(destination: SignupView(), tag: NavigationLinks.signUp, selection: $navigation) {
                EmptyView()
            }

            NavigationLink(destination: ForgotPasswordView(), tag: NavigationLinks.forgotPassword, selection: $navigation) {
                EmptyView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
