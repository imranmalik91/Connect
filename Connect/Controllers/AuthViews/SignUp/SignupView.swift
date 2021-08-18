//
//  SignupView.swift
//  Connect
//
//  Created by imran malik on 13/08/21.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var navigation: NavigationLinks? = nil
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        GeometryReader { geo in
                VStack {
                    //addNavigations()
                    ScrollView {
                        VStack(alignment: .center) {
                            firstName(geo)
                                .padding(.top, 40)
                            lastName(geo)
                            email(geo)
                            password(geo)
                            confirmPassword(geo)
                        }
                    }
                    Spacer()
                    addSignUp(geo)
                        .padding(.bottom, 20)
            }
            .padding(.leading, 20)
        }
        .navigationBarTitle("Signup", displayMode: .inline)
    }

    // MARK: - First name setup
    func firstName(_ geo: GeometryProxy) -> some View {
        TextFieldView(field: $firstName, placeholder: "First name")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2.2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(.namePhonePad)
            .padding(.bottom, 10)
    }

    func lastName(_ geo: GeometryProxy) -> some View {
        TextFieldView(field: $lastName, placeholder: "Last name")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2.2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(.namePhonePad)
            .padding(.bottom, 10)
    }

    func email(_ geo: GeometryProxy) -> some View {
        TextFieldView(field: $email, placeholder: "Email")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2.2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(.emailAddress)
            .padding(.bottom, 10)
    }

    func password(_ geo: GeometryProxy) -> some View {
        SecureFieldView(field: $password, placeholder: "Password")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2.2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 10)
    }

    func confirmPassword(_ geo: GeometryProxy) -> some View {
        SecureFieldView(field: $confirmPassword, placeholder: "Confirm password")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

    func addSignUp(_ geo: GeometryProxy) -> some View {
        FilledButton(title: "Sign up") {
            print("Signup clicked...")
        }
        .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2.2), height: Spacing.buttonHeight, alignment: .center)
    }

    // MARK: - Login
    func addLogin(_ geo: GeometryProxy) -> some View {
        Button(action: {
            navigation = .login
        }, label: {
            Text("Already have an account?")
                .foregroundColor(Color.gray)
            Text("Login")
                .bold()
                .foregroundColor(Color.black)
        })
        .padding([.top, .bottom], 20)
    }

//    func addNavigations() -> some View {
//        NavigationLink(destination: LoginView(shouldDismiss: false), tag: NavigationLinks.login, selection: $navigation) {
//            EmptyView()
//        }
//    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
