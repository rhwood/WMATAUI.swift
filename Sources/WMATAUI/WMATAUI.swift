//
//  WMATAUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-07.
//

import SwiftUI
import WMATA

public struct WMATAUI {

    /// Active lines in the order listed on the [2019 System Map](https://wmata.com/schedules/maps/upload/2019-System-Map.pdf).
    public static let lines: [Line] = [.RD, .OR, .BL, .GR, .YL, .SV]

    /// All lines in the order listed on the [2019 System Map](https://wmata.com/schedules/maps/upload/2019-System-Map.pdf).
    /// This includes the Yellow Rush Plus (YLRP, ran from 2012 to 2017) line after Yellow (YL).
    public static let allLines: [Line] = [.RD, .OR, .BL, .GR, .YL, .YLRP, .SV]

    /// The WMATA standard font with the given style. The WMATA style guide stipulates the use of Helvetica Neue.
    /// Note that station signage uses multiple variations of Helvetica for different signage.
    ///
    /// - Parameter style: The font style.
    ///
    /// - Returns: The WMATA standard font in the given style.
    @available(OSX 10.15, *)
    @available(iOS 14.0, *)
    public static func font(_ style: Font.TextStyle) -> Font {
        Font.custom("Helvetica Neue",
                    size: UIFont.preferredFont(forTextStyle: UIFont.TextStyle.with(textStyle: style)).pointSize,
                    relativeTo: style)
    }

    /// Order lines in the order used by WMATA for line designations on maps.
    /// The order used is the order lines are listed on the [2019 System Map](https://wmata.com/schedules/maps/upload/2019-System-Map.pdf).
    ///
    /// - Parameter line0: The first line.
    /// - Parameter line1: The second line.
    ///
    /// - Returns: true if line0 is before line1 in the order on the map; false otherwise.
    public static func mapOrder(_ line0: Line, _ line1: Line) -> Bool {
        return allLines.firstIndex(of: line0) ?? 0 < allLines.firstIndex(of: line1) ?? 0
    }
}

/// WMATA Rail Colors from
/// [WMATA Brand and Style Guidelines 3/2018](https://www.wmata.com/business/procurement/solicitations/documents/Metro_Brand_and_Style_Guidelines.pdf)
@available(OSX 10.15, *)
public struct MetroRailColor {

    /// Red Line Pantone 193c from Brand and Style Guidelines 3/2018
    public static let red = Color(.sRGB, red: 191 / 255, green: 13 / 255, blue: 62 / 255)
    /// Orange Line Pantone 144c from Brand and Style Guidelines 3/2018
    public static let orange = Color(.sRGB, red: 237 / 255, green: 139 / 255, blue: 0)
    /// Blue Line Pantone 2925c from Brand and Style Guidelines 3/2018
    public static let blue = Color(.sRGB, red: 0, green: 156 / 255, blue: 222 / 255)
    /// Green Line Pantone 354c from Brand and Style Guidelines 3/2018
    public static let green = Color(.sRGB, red: 0, green: 177 / 255, blue: 64 / 255)
    /// Yellow Line Pantone 109c from Brand and Style Guidelines 3/2018
    public static let yellow = Color(.sRGB, red: 1, green: 209 / 255, blue: 0)
    /// Silver Line Pantone 443c from Brand and Style Guidelines 3/2018
    public static let silver = Color(.sRGB, red: 145 / 255, green: 157 / 255, blue: 157 / 255)
}

/// WMATA Bus Colors from
/// [WMATA Brand and Style Guidelines 3/2018](https://www.wmata.com/business/procurement/solicitations/documents/Metro_Brand_and_Style_Guidelines.pdf)
@available(OSX 10.15, *)
public struct MetroBusColor {
    /// Bus Blue Pantone 294c from Brand and Style Guidelines 3/2018
    public static let blue = Color(.sRGB, red: 0, green: 47 / 255, blue: 108 / 255, opacity: 1)
    /// Bus Red Pantone 186c from Brand and Style Guidelines 3/2018
    public static let red = Color(.sRGB, red: 200 / 255, green: 16 / 255, blue: 46 / 255, opacity: 1)
    /// Bus Silver Pantone 443c from Brand and Style Guidelines 3/2018 happens to be same as MetroRailColor.silver
    public static let silver = MetroRailColor.silver
}

/// WMATA Secondary Color Palette from
/// [WMATA Brand and Style Guidelines 3/2018](https://www.wmata.com/business/procurement/solicitations/documents/Metro_Brand_and_Style_Guidelines.pdf)
@available(OSX 10.15, *)
public struct MetroSecondaryColor {
    /// Secondary Red Pantone 485c from Brand and Style Guidelines 3/2018
    public static let red = Color(.sRGB, red: 218 / 255, green: 41 / 255, blue: 28 / 255, opacity: 1)
    /// Secondary Orange Pantone 172c from Brand and Style Guidelines 3/2018
    public static let orange = Color(.sRGB, red: 250 / 255, green: 70 / 255, blue: 22 / 255, opacity: 1)
    /// Secondary Yellow Pantone 137c from Brand and Style Guidelines 3/2018
    public static let yellow = Color(.sRGB, red: 1, green: 163 / 255, blue: 0, opacity: 1)
    /// Secondary Light Purple Pantone 265c from Brand and Style Guidelines 3/2018
    public static let lightPurple = Color(.sRGB, red: 144 / 255, green: 88 / 255, blue: 205 / 255, opacity: 1)
    /// Secondary Purple Pantone 2579 from Brand and Style Guidelines 3/2018
    public static let purple = Color(.sRGB, red: 92 / 255, green: 6 / 255, blue: 140 / 255, opacity: 1)
    /// Secondary Magenta Pantone 234 from Brand and Style Guidelines 3/2018
    public static let magenta = Color(.sRGB, red: 162 / 255, green: 0, blue: 103 / 255, opacity: 1)
    /// Secondary (Dark) Blue Pantone 661 from Brand and Style Guidelines 3/2018
    public static let blue = Color(.sRGB, red: 0, green: 53 / 255, blue: 148 / 255, opacity: 1)
    /// Secondary Light Blue Pantone 299 from Brand and Style Guidelines 3/2018
    public static let lightBlue = Color(.sRGB, red: 0, green: 163 / 255, blue: 224 / 255, opacity: 1)
    /// Secondary Green Pantone 575c from Brand and Style Guidelines 3/2018
    public static let green = Color(.sRGB, red: 103 / 255, green: 130 / 255, blue: 58 / 255, opacity: 1)
    /// Secondary Yellow Green Pantone 390 from Brand and Style Guidelines 3/2018
    public static let yellowGreen = Color(.sRGB, red: 181, green: 189 / 255, blue: 0, opacity: 1)
    /// Secondary Ocean Green Pantone 7712 from Brand and Style Guidelines 3/2018
    public static let oceanGreen = Color(.sRGB, red: 0, green: 133 / 255, blue: 155 / 255, opacity: 1)
    /// Secondary Bright Ocean Green Pantone 3262 from Brand and Style Guidelines 3/2018
    public static let brightOceanGreen = Color(.sRGB, red: 0, green: 191 / 255, blue: 179 / 255, opacity: 1)
}

/// WMATA Station colors from
/// [Signage Standards Manual - Station Signs 8.0](https://www.wmata.com/business/procurement/solicitations/documents/Manual%20of%20Graphics%20Standards_03032008_pages_101-201.pdf)
@available(OSX 10.15, *)
public struct MetroStationColor {
    /// Metro Station Brown (Pantone 448 CVC)
    public static let brown = Color(.sRGB, red: 74 / 255, green: 65 / 255, blue: 42 / 255, opacity: 1)
    /// Metro Station Light Brown (Pantone Warm Gray 10 C)
    public static let lightBrown = Color(.sRGB, red: 121 / 255, green: 110 / 255, blue: 101 / 255, opacity: 1)
}

extension RailPrediction: Identifiable {

    public var id: String {
        return line.rawValue + group + destination + minutes
    }
}

extension BusPrediction: Identifiable {

    public var id: String {
        return route.id + tripId + vehicleId + minutes.description
    }
}
