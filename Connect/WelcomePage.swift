//
//  WelcomePage.swift
//  Connect
//
//  Created by imran malik on 11/08/21.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Connect")
                .font(.largeTitle)
                .bold()
            Spacer()
            Spacer()
            Button("Hello") {

            }
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomePage()
        }
    }
}
