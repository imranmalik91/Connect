//
//  Styler.swift
//  Connect
//
//  Created by imran malik on 11/08/21.
//

import SwiftUI

struct Styler {
    let font = Fonts()

}

struct AppFont {
    static func commonFont(fontSize: CGFloat) -> Font {
        return Font.custom("Font-Family-Name", size: fontSize)
    }
}

extension Styler {
    struct Fonts {
        static let logo = AppFont.commonFont(fontSize: 25)
    }

}

