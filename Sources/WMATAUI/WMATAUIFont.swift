//
//  UIFont+Extension.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

#if os(macOS)
import AppKit
public typealias WMATAUIFont = NSFont
#else
import UIKit
public typealias WMATAUIFont = UIFont
#endif
import SwiftUI

@available(macOS 11.0, *)
extension WMATAUIFont.TextStyle {

    // rule triggered by tvOS macro, so disabling
    // swiftlint:disable cyclomatic_complexity
    /// Convert a Font.TextStyle to a UIFont.TextStyle
    static func with(textStyle: Font.TextStyle) -> WMATAUIFont.TextStyle {
        let style: WMATAUIFont.TextStyle

        switch textStyle {
        case .body:
            style = .body
        case .callout:
            style = .callout
        case .caption:
            style = .caption1
        case .caption2:
            style = .caption2
        case .footnote:
            style = .footnote
        case .headline:
            style = .headline
        case .largeTitle:
            #if os(tvOS)
            style = .title1
            #else
            style = .largeTitle
            #endif
        case .subheadline:
            style = .subheadline
        case .title:
            style = .title1
        case .title2:
            style = .title2
        case .title3:
            style = .title3
        default:
            style = .body
        }
        return style
    }
}
