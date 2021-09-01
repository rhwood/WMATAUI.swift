//
//  UIFont+Extension.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

import SwiftUI

extension UIFont.TextStyle {

    // rule triggered by tvOS macro, so disabling
    // swiftlint:disable cyclomatic_complexity
    /// Convert a Font.TextStyle to a UIFont.TextStyle
    @available(OSX 10.15, *)
    static func with(textStyle: Font.TextStyle) -> UIFont.TextStyle {
        let uiFont: UIFont.TextStyle

        switch textStyle {
        case .body:
            uiFont = .body
        case .callout:
            uiFont = .callout
        case .caption:
            uiFont = .caption1
        case .caption2:
            uiFont = .caption2
        case .footnote:
            uiFont = .footnote
        case .headline:
            uiFont = .headline
        case .largeTitle:
            #if os(tvOS)
            uiFont = .title1
            #else
            uiFont = .largeTitle
            #endif
        case .subheadline:
            uiFont = .subheadline
        case .title:
            uiFont = .title1
        case .title2:
            uiFont = .title2
        case .title3:
            uiFont = .title3
        default:
            uiFont = .body
        }
        return uiFont
    }
}
