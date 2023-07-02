//
//  WMATAUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-07.
//

import SwiftUI
import WMATA

/// Functions to return the WMATA standard font.
public extension Font {
    
    /// The WMATA standard font with the given style. The WMATA style guide stipulates the use of Helvetica Neue.
    /// Note that station signage uses multiple variations of Helvetica for different signage.
    /// - Parameters:
    ///   - style: The font style.
    ///   - factor: Factor by which to multiply default font size for style; defaults to `1.0`.
    /// - Returns: The WMATA standard font in the given style.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    static func metroFont(_ style: Font.TextStyle, factor: CGFloat = 1.0) -> Font {
        metroFont(size: WMATAUIFont.preferredFont(forTextStyle: .with(textStyle: style)).pointSize * factor, relativeTo: style)
    }

    /// The WMATA standard font with the given size. The WMATA style guide stipulates the use of Helvetica Neue.
    /// Note that station signage uses multiple variations of Helvetica for different signage.
    /// - Parameters:
    ///   - size: The font size.
    ///   - relativeTo: Style the font size resizes relative to when user overrides system default sizes; defaults to `.body`.
    /// - Returns: The WMATA standard font in the given size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    static func metroFont(size: CGFloat, relativeTo style: TextStyle = .body) -> Font {
        Font.custom("Helvetica Neue", size: size, relativeTo: style)
    }
}
