//
//  ProfileView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct ProfileView: View {
    @Binding var logout: Bool
    let url = URL(string: "https://www.google.com")
    @State var isPresented = false

    var body: some View {
        VStack {
            Button("Logout") {
                UserDataManager.set(.isLoggedIn, value: false)
                logout = true
            }
            .padding(.bottom, 20)

            Button("Open Web") {
                isPresented = true
            }
            .padding(.bottom, 20)

            Button("Open Second Web") {
                isPresented = true
            }
            .padding(.bottom, 20)
        }
        .sheet(isPresented: $isPresented, onDismiss: {
            isPresented = false
            print("Sheet dismissed")
        }, content: {
            WebView(url: url!)
        })
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
