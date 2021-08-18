//
//  UserDataManager.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct UserDataManager {
    enum Options: String {
        case isLoggedIn
    }

    private static let userDefaults = UserDefaults.standard

    static func set(_ option: Options, value: Bool) {
        userDefaults.set(value, forKey: option.rawValue)
    }

    static func get(_ option: Options) -> Bool {
        if let value = userDefaults.value(forKey: option.rawValue) as? Bool {
            return value
        }
        return false
    }
}

