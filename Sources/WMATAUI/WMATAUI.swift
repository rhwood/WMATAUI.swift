//
//  WMATAUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-07.
//

import SwiftUI
import WMATA

public struct WMATAUI {
    
    /// Get a color dot sized for the given text style.
    ///
    /// - Parameter color: The dot's color.
    /// - Parameter style: The style to match.
    /// - Parameter factor: Optional factor to multiply the point size of the style by; defaults to `0.9`.
    ///
    /// - Returns: A circle in in the given color sized to match the text style.
    @available(macOS 11.0, *)
    public static func dot(color: Color, style: Font.TextStyle, factor: CGFloat = 0.9) -> some View {
        let size = WMATAUIFont.preferredFont(forTextStyle: .with(textStyle: style)).pointSize * factor
        return Circle()
            .foregroundColor(color)
            .frame(width: size, height: size, alignment: .center)
    }

    /// Get a color dot sized for the given text style with a smaller text within it. This really works only for one or two character strings.
    ///
    ///  - Parameter text: The text to display.
    ///  - Parameter color: The color of the dot.
    ///  - Parameter textColor: The color of the text in the dot.
    ///  - Parameter style: The style to match.
    ///
    /// - Returns: A circle in in the given color sized to match the text style with the given text in a smaller size.
    @available(macOS 11.0, *)
    public static func roundel(text: String, color: Color, textColor: Color, style: Font.TextStyle) -> some View {
        ZStack {
            WMATAUI.dot(color: color, style: style, factor: 1.0)
            Text(text)
                .font(.metroFont(style, factor: 0.5).weight(.bold))
                .foregroundColor(textColor)
        }
    }
}
