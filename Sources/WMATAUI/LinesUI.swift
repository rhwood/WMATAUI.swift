//
//  Line.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

import SwiftUI
import WMATA

public extension Line {

    /// The line color.
    var color: Color {
        switch self {
        case .red:
            return MetroRailColor.red
        case .orange:
            return MetroRailColor.orange
        case .blue:
            return MetroRailColor.blue
        case .green:
            return MetroRailColor.green
        case .yellow, .yellowLineRushPlus:
            return MetroRailColor.yellow
        case .silver:
            return MetroRailColor.silver
        }
    }

    /// The text color (white or black) that contrasts with the line color.
    /// These colors match the colors used by WMATA on their public maps.
    var textColor: Color {
        switch self {
        case .red, .blue, .green:
            return Color.white
        case .orange, .silver, .yellow, .yellowLineRushPlus:
            return Color.black
        }
    }

    /// Get a line dot sized for the given text style.
    ///
    /// - Parameter style: The style to match.
    /// - Parameter factor: Optional factor to multiply the point size of the style by, defaults to 0.9.
    ///
    /// - Returns: A circle in in the color of this line sized to match the text style.
    func dot(style: UIFont.TextStyle, factor: CGFloat = 0.9) -> some View {
        let size = UIFont.preferredFont(forTextStyle: style).pointSize * factor
        return Circle()
            .foregroundColor(self.color)
            .frame(width: size, height: size, alignment: .center)
    }

}
