//
//  NavigationLints.swift
//  Connect
//
//  Created by imran malik on 12/08/21.
//

import SwiftUI

enum NavigationLinks: Equatable, Identifiable, CustomStringConvertible {
    case login
    case signUp
    case forgotPassword

    var description: String {
        switch self {
        case .login:
            return "login"
        case .signUp:
            return "signup"
        case .forgotPassword:
            return "forgotPassword"
        }
    }

    var id: NavigationLinks { self }
}

//extension Binding {
//    func map<NewValue>(_ transform: @escaping (Value) -> NewValue) -> Binding<NewValue> {
//        Binding<NewValue>(get: { transform(wrappedValue) }, set: { _ in })
//    }
//}
