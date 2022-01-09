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
    @available(macOS 11.0, iOS 14.0, *)
    public static func dot(color: Color, style: Font.TextStyle, factor: CGFloat = 0.9) -> some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
            .font(.metroFont(style, factor: factor))
    }

    /// Get a color dot sized for the given text style with a smaller text within it. This really works only for one or two character strings.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `2.0`.
    ///
    ///  - Parameter text: The text to display.
    ///  - Parameter color: The color of the dot.
    ///  - Parameter textColor: The color of the text in the dot.
    ///  - Parameter style: The style to match.
    ///  - Parameter factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    ///
    /// - Returns: A circle in in the given color sized to match the text style with the given text in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    public static func roundel<S: StringProtocol>(text: S, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        WMATAUI.roundel(view: Text(text),
                        color: color,
                        textColor: textColor,
                        style: style,
                        factor: factor)
    }

    /// Get a color dot sized for the given text style with an image within it. This really works only for symbols.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `2.0`.
    ///
    ///  - Parameter image: The image to display.
    ///  - Parameter color: The color of the dot.
    ///  - Parameter textColor: The color of the text in the dot.
    ///  - Parameter style: The style to match.
    ///  - Parameter factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    ///
    /// - Returns: A circle in in the given color sized to match the text style with the given image in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    public static func roundel(image: Image, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        WMATAUI.roundel(view: image,
                        color: color,
                        textColor: textColor,
                        style: style,
                        factor: factor)
    }

    /// Get a color dot sized for the given view. This really works only for symbols or one or two character strings.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `2.0`.
    ///
    ///  - Parameter view: The view to display.
    ///  - Parameter color: The color of the dot.
    ///  - Parameter textColor: The color of the text in the dot.
    ///  - Parameter style: The style to match.
    ///  - Parameter factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    ///
    /// - Returns: A circle in in the given color sized to match the text style with the given view in a smaller size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    private static func roundel<Content: View>(view: Content, color: Color, textColor: Color, style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        ZStack {
            WMATAUI.dot(color: color, style: style, factor: 1.0 * factor)
                .layoutPriority(1)
            view
                .font(.metroFont(style, factor: 0.5 * factor).bold())
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
                WMATAUI.roundel(text: "WW", color: .purple, textColor: .white, style: style)
                Text("Text Fits").font(.metroFont(style))
            }
            HStack {
                WMATAUI.roundel(text: "CDE", color: .purple, textColor: .white, style: style)
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
                WMATAUI.roundel(text: "AB", color: .purple, textColor: .white, style: style)
                Text("Huge Text").font(.metroFont(style))
            }
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            HStack {
                WMATAUI.roundel(text: "AB", color: .purple, textColor: .white, style: .caption)
                Text("Tiny Text").font(.metroFont(.caption))
            }
            Text("Metro Brand Icons:")
            HStack {
                WMATAUI.roundel(image: Image(metroName: "train"), color: .gray, textColor: .purple, style: style)
                WMATAUI.roundel(image: Image(metroName: "escalator.up"), color: .white, textColor: .green, style: style)
                WMATAUI.roundel(image: Image(metroName: "escalator.down"), color: .green, textColor: .white, style: style)
                WMATAUI.roundel(image: Image(metroName: "bus"), color: .green, textColor: .black, style: style)
            }
            .environment(\.sizeCategory, .extraSmall)
        }
        
    }
}
