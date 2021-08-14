//
//  ForgotPasswordView.swift
//  Connect
//
//  Created by imran malik on 13/08/21.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @State private var isHighlight = false

    var body: some View {
        GeometryReader { geo in
            NavigationView {
                VStack {
                    Spacer()
                    textLogin(geo)
                    Spacer()
                    addSubmit(geo)
                }
            }
            .navigationBarTitle("Forgot password", displayMode: .inline)
        }
    }

    func textLogin(_ geo: GeometryProxy) -> some View {
        TextFieldView(field: $email, placeholder: "Email")
            .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .keyboardType(.emailAddress)
    }

    func addSubmit(_ geo: GeometryProxy) -> some View {
        FilledButton(title: "Forgot") {
            print("Forgot clicked...")
        }
        .frame(width: abs(geo.size.width - Spacing.defaultPadding * 2), height: Spacing.buttonHeight, alignment: .center)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
