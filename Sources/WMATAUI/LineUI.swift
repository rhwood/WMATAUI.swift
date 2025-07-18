//
//  Line.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

import SwiftUI
import WMATA

/// SwiftUI dependent extensions to ``Line``.
public extension Line {

    // New style single letter line names introduced starting 22 June 2025
    var newStyle: String {
        switch self {
        case .red:
            return "R"
        case .orange:
            return "O"
        case .blue:
            return "B"
        case .green:
            return "G"
        case .yellow:
            return "Y"
        case .silver:
            return "S"
        }
    }

    /// The line color.
    var color: Color {
        switch self {
        case .red:
            return .metrorailRed
        case .orange:
            return .metrorailOrange
        case .blue:
            return .metrorailBlue
        case .green:
            return .metrorailGreen
        case .yellow:
            return .metrorailYellow
        case .silver:
            return .metrorailSilver
        }
    }

    /// The text color (white or black) that contrasts with the line color.
    /// These colors match the colors used by WMATA on their public maps, but do not match the colors used by Apple in Maps.
    var textColor: Color {
        switch self {
        case .red, .blue, .green:
            return Color.white
        case .orange, .silver, .yellow:
            return Color.black
        }
    }

    /// Get a textless dot in the line color sized for the given text style.
    /// - Parameters:
    ///   - style: The style to match.
    ///   - factor: Optional factor to multiply the point size of the style by, defaults to 0.9.
    /// - Returns: A circle in in the color of this line sized to match the text style.
    @available(macOS 11.0, iOS 14.0, *)
    func dot(style: Font.TextStyle, factor: CGFloat = 0.9) -> some View {
        WMATAUI.dot(color: self.color, style: style, factor: factor)
    }

    /// Get a dot in the line color containing the two letter line code and sized for the given text style.
    ///
    /// To get a roundel where the line code text size matches the style size, use a factor of `2.0`.
    /// - Parameters:
    ///   - style: The style to match.
    ///   - factor: Optional factor to multiply the point size of the style by; defaults to `1.0`.
    /// - Returns: A circle in the color of this line sized to match the text style with the line code in a smaller text size.
    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    @available(macOS 11.0, *)
    func roundel(style: Font.TextStyle, factor: CGFloat = 1.0) -> some View {
        WMATAUI.roundel(text: self.newStyle, color: self.color, textColor: self.textColor, style: style, factor: factor)
    }
}

/// Conformance with ``Comparable``.
extension Line: Comparable {
    
    /// Sort an array of ``Line`` by the order shown in the Metrorail map legend.
    public static func < (lhs: Line, rhs: Line) -> Bool {
        allCases.firstIndex(of: lhs)! < allCases.firstIndex(of: rhs)!
    }
}

@available(iOS 14.0, *)
@available(macCatalyst 14.0, *)
@available(macOS 11.0, *)
struct Line_Preview: PreviewProvider {
    static var previews: some View {
        let style = Font.TextStyle.largeTitle
        VStack {
            ForEach(Line.allCases, id: \.rawValue) { line in
                HStack {
                    line.roundel(style: style)
                    Text(line.name)
                        .font(.metroFont(style))
                }
            }
        }
    }
}
