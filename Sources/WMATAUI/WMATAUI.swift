//
//  WMATAUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-07.
//

import SwiftUI
import WMATA

/// Static functions to create WMATA branded roundels.
public struct WMATAUI {
    
    /// Get a color dot sized for the given text style.
    /// - Parameters:
    ///   - color: The dot's color.
    ///   - style: The style to match.
    ///   - factor: Optional factor to multiply the point size of the style by; defaults to `0.9`.
    /// - Returns: A circle in in the given color sized to match the text style.
    @available(macOS 11.0, iOS 14.0, *)
    public static func dot(color: Color, style: Font.TextStyle, factor: CGFloat = 0.9) -> some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
            .font(.metroFont(style, factor: factor))
    }

    /// Get a color dot sized for the given text style with a smaller text within it. This really works only for one or two character strings.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `1 / 0.7` or `1.42857142857`.
    /// - Parameters:
    ///    - text: The text to display.
    ///    - color: The color of the dot.
    ///    - textColor: The color of the text in the dot.
    ///    - style: The style to match.
    ///    - factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    /// - Returns: A circle in in the given color sized to match the text style with the given text in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    public static func roundel<S: StringProtocol>(text: S, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        WMATAUI.roundel(view: Text(text),
                        color: color,
                        textColor: textColor,
                        style: style,
                        factor: factor,
                        contentFactor: 0.7)
    }

    /// Get a color dot sized for the given text style with an image within it. This really works only for symbols.
    ///
    /// To get a roundel where the image size matches the style size, use a factor of `2.0`.
    /// - Parameters:
    ///    - image: The image to display.
    ///    - color: The color of the dot.
    ///    - textColor: The color of the text in the dot.
    ///    - style: The style to match.
    ///    - factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    /// - Returns: A circle in in the given color sized to match the text style with the given image in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    public static func roundel(image: Image, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        WMATAUI.roundel(view: image,
                        color: color,
                        textColor: textColor,
                        style: style,
                        factor: factor,
                        contentFactor: 0.5)
    }

    /// Get a color dot sized for the given view. This really works only for symbols or one or two character strings.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `2.0` when using the default contentFactor or of `1 / contentFactor` for other size.
    /// - Parameters:
    ///    - view: The view to display.
    ///    - color: The color of the dot.
    ///    - textColor: The color of the text in the dot.
    ///    - style: The style to match.
    ///    - factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    ///    - contentFactor: Optional factor to multiply the size of the image or text inside the roundel by; defaults to `0.5`.
    /// - Returns: A circle in in the given color sized to match the text style with the given view in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    private static func roundel<Content: View>(view: Content, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0, contentFactor: CGFloat = 0.5) -> some View {
        ZStack {
            WMATAUI.dot(color: color, style: style, factor: factor)
            view
                .font(.metroFont(style, factor: contentFactor * factor).bold())
                .foregroundColor(textColor)
        }
    }
}

@available(iOS 14.0, *)
@available(macCatalyst 14.0, *)
@available(macOS 11.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let style = Font.TextStyle.largeTitle
        let image = Image(systemName: "tram.fill")
        VStack {
            HStack {
                WMATAUI.roundel(text: "M", color: .purple, textColor: .white, style: style)
                Text("Text Fits").font(.metroFont(style))
            }
            HStack {
                WMATAUI.roundel(text: "WM", color: .purple, textColor: .white, style: style)
                Text("Text To Long").font(.metroFont(style))
            }
            HStack {
                WMATAUI.roundel(image: image, color: .purple, textColor: .white, style: style)
                Text("System Image").font(.metroFont(style))
            }
            Text("Different Colors:")
            HStack {
                WMATAUI.roundel(image: image, color: .gray, textColor: .purple, style: style)
                WMATAUI.roundel(image: image, color: .white, textColor: .green, style: style)
                WMATAUI.roundel(image: image, color: .green, textColor: .white, style: style)
                WMATAUI.roundel(image: image, color: .green, textColor: .black, style: style)
            }
            HStack {
                WMATAUI.roundel(text: "M", color: .purple, textColor: .white, style: style)
                Text("Huge Text").font(.metroFont(style))
            }
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            HStack {
                WMATAUI.roundel(text: "M", color: .purple, textColor: .white, style: .caption)
                Text("Tiny Text").font(.metroFont(.caption))
            }
            .environment(\.sizeCategory, .extraSmall)
        }
        
    }
}
