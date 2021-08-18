//
//  CGFloat+Extensions.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

extension CGFloat {
    func calculateWidth() -> CGFloat {
        return self * 16/9
    }

    func calculateHeight() -> CGFloat {
        return self * 9/16
    }
}

