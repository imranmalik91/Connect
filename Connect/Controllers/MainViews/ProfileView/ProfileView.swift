//
//  ProfileView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct ProfileView: View {
    @Binding var logout: Bool

    var body: some View {
        VStack {
            Button("Logout") {
                UserDataManager.set(.isLoggedIn, value: false)
                logout = true
            }
        }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
