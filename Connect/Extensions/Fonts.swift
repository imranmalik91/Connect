//
//  Fonts.swift
//  Connect
//
//  Created by imran malik on 11/08/21.
//

import SwiftUI

extension Font {
    static let appLogo = Font.custom(FontNames.black, size: FontSize.logo)
    static let appTitle = Font.custom(FontNames.semiBold, size: FontSize.title)
    static let appBody = Font.custom(FontNames.regular, size: FontSize.body)
    static let buttonTitle = Font.custom(FontNames.semiBold, size: FontSize.buttonTitle)
}

private struct FontNames {
    static let black = "SFProDisplay-Black"
    static let semiBold = "SFProDisplay-Semibold"
    static let regular = "SFProDisplay-Regular"
    static let thin = "SFProDisplay-Thin"
    static let ultraLight = "SFProDisplay-Ultralight"
    static let logo = "Gravicon-Display"
}

private struct FontSize {
    static let logo: CGFloat = 30
    static let title: CGFloat = 20
    static let body: CGFloat = 17
    static let buttonTitle: CGFloat = 17
}
