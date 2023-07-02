//
//  UIFont+Extension.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

#if os(macOS)
import AppKit
/// Opaque reference to NSFont (macOS) or UIFont (everything else including macOS Catalyst).
public typealias WMATAUIFont = NSFont
#else
import UIKit
/// Opaque reference to NSFont (macOS) or UIFont (everything else including macOS Catalyst).
public typealias WMATAUIFont = UIFont
#endif
import SwiftUI

/// Extension of ``WMATAUIFont.TextStyle``
@available(macOS 11.0, *)
public extension WMATAUIFont.TextStyle {

    // rule triggered by tvOS macro, so disabling
    // swiftlint:disable cyclomatic_complexity
    /// Convert a Font.TextStyle to a ``NSFont.TextStyle`` (on macOS) or ``UIFont.TextStyle``
    /// (on everything else including macOS Catalyst).
    ///
    /// Note that on tvOS, this converts ``Font.TextStyle.largeTitle`` the same as ``Font.TextStyle.title``.
    /// - Parameter textStyle: the ``Font.TextStyle`` to convert.
    /// - Returns: The corresponding ``WMATAUIFont.TextStyle`` for the given textStyle.
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
