//
//  WMATAUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 2021-01-07.
//

import SwiftUI

/// WMATA Colors from
/// [Brand and Style Guidelines 3/2018](https://www.wmata.com/business/procurement/solicitations/documents/Metro_Brand_and_Style_Guidelines.pdf) and
/// [Signage Standards Manual - Station Signs](https://www.wmata.com/business/procurement/solicitations/documents/Manual%20of%20Graphics%20Standards_03032008_pages_101-201.pdf)
public extension Color {

    /// Red Line (Pantone 193c)
    static let metrorailRed = Color(.sRGB, red: 191 / 255, green: 13 / 255, blue: 62 / 255, opacity: 1)
    /// Orange Line (Pantone 144c)
    static let metrorailOrange = Color(.sRGB, red: 237 / 255, green: 139 / 255, blue: 0, opacity: 1)
    /// Blue Line (Pantone 2925c)
    static let metrorailBlue = Color(.sRGB, red: 0, green: 156 / 255, blue: 222 / 255, opacity: 1)
    /// Green Line (Pantone 354c)
    static let metrorailGreen = Color(.sRGB, red: 0, green: 177 / 255, blue: 64 / 255, opacity: 1)
    /// Yellow Line (Pantone 109c)
    static let metrorailYellow = Color(.sRGB, red: 1, green: 209 / 255, blue: 0, opacity: 1)
    /// Silver Line (Pantone 443c)
    static let metrorailSilver = Color(.sRGB, red: 145 / 255, green: 157 / 255, blue: 157 / 255, opacity: 1)
    /// Bus Blue (Pantone 294c)
    static let metrobusBlue = Color(.sRGB, red: 0, green: 47 / 255, blue: 108 / 255, opacity: 1)
    /// Bus Red (Pantone 186c)
    static let metrobusRed = Color(.sRGB, red: 200 / 255, green: 16 / 255, blue: 46 / 255, opacity: 1)
    /// Bus Silver (Pantone 443c) happens to be same as ``metrorailSilver``
    static let metrobusSilver = Color.metrorailSilver
    /// Secondary palette Red (Pantone 485c)
    static let metroSecondaryRed = Color(.sRGB, red: 218 / 255, green: 41 / 255, blue: 28 / 255, opacity: 1)
    /// Secondary palette Orange (Pantone 172c)
    static let metroSecondaryOrange = Color(.sRGB, red: 250 / 255, green: 70 / 255, blue: 22 / 255, opacity: 1)
    /// Secondary palette Yellow (Pantone 137c)
    static let metroSecondaryYellow = Color(.sRGB, red: 1, green: 163 / 255, blue: 0, opacity: 1)
    /// Secondary palette Light Purple (Pantone 265c)
    static let metroSecondaryLightPurple = Color(.sRGB, red: 144 / 255, green: 88 / 255, blue: 205 / 255, opacity: 1)
    /// Secondary palette Purple (Pantone 2579)
    static let metroSecondaryPurple = Color(.sRGB, red: 92 / 255, green: 6 / 255, blue: 140 / 255, opacity: 1)
    /// Secondary palette Magenta (Pantone 234)
    static let metroSecondaryMagenta = Color(.sRGB, red: 162 / 255, green: 0, blue: 103 / 255, opacity: 1)
    /// Secondary palette (Dark) Blue (Pantone 661)
    static let metroSecondaryBlue = Color(.sRGB, red: 0, green: 53 / 255, blue: 148 / 255, opacity: 1)
    /// Secondary palette Light Blue (Pantone 299)
    static let metroSecondaryLightBlue = Color(.sRGB, red: 0, green: 163 / 255, blue: 224 / 255, opacity: 1)
    /// Secondary palette Green (Pantone 575c)
    static let metroSecondaryGreen = Color(.sRGB, red: 103 / 255, green: 130 / 255, blue: 58 / 255, opacity: 1)
    /// Secondary palette Yellow Green (Pantone 390)
    static let metroSecondaryYellowGreen = Color(.sRGB, red: 181, green: 189 / 255, blue: 0, opacity: 1)
    /// Secondary palette Ocean Green (Pantone 7712)
    static let metroSecondaryOceanGreen = Color(.sRGB, red: 0, green: 133 / 255, blue: 155 / 255, opacity: 1)
    /// Secondary palette Bright Ocean Green (Pantone 3262)
    static let metroSecondaryBrightOceanGreen = Color(.sRGB, red: 0, green: 191 / 255, blue: 179 / 255, opacity: 1)
    /// Metro Station Brown (Pantone 448 CVC)
    static let metroStationBrown = Color(.sRGB, red: 74 / 255, green: 65 / 255, blue: 42 / 255, opacity: 1)
    /// Metro Station Light Brown (Pantone Warm Gray 10 C)
    static let metroStationLightBrown = Color(.sRGB, red: 121 / 255, green: 110 / 255, blue: 101 / 255, opacity: 1)
}
