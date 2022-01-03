//
//  Line.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-06.
//

import SwiftUI
import WMATA

/// SwiftUI dependent extensions to Line
public extension Line {

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
        case .yellow, .yellowLineRushPlus:
            return .metrorailYellow
        case .silver:
            return .metrorailSilver
        }
    }

    /// The text color (white or black) that contrasts with the line color.
    /// These colors match the colors used by WMATA on their public maps, but do match the colors used by Apple in Maps on iOS 15.
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
    @available(macOS 11.0, *)
    func dot(style: Font.TextStyle, factor: CGFloat = 0.9) -> some View {
        WMATAUI.dot(color: self.color, style: style, factor: factor)
    }
}

/// Non-UI related extensions to WMATA.Line
public extension Line {

    /// All lines in the order listed on the [2019 System Map](https://wmata.com/schedules/maps/upload/2019-System-Map.pdf).
    ///
    /// This includes the Yellow Rush Plus (ran from 2012 to 2017) line after Yellow).
    /// Yellow Line Rush Plus was never depicted separately from Yellow on the map (it was depicted as
    /// a dashed yellow line, and trains only showed "Yellow" with a different destination sign).
    static let allInMapOrder: [Line] = [.red, .orange, .blue, .green, .yellow, .yellowLineRushPlus, .silver]
}

/// Conformance with Comparable
extension Line: Comparable {
    
    /// Sort an array of Line by the order shown in the Metrorail map legend
    public static func < (lhs: Line, rhs: Line) -> Bool {
        allInMapOrder.firstIndex(of: lhs)! < allInMapOrder.firstIndex(of: rhs)!
    }
}
