//
//  ColorExtensionTests.swift
//  
//
//  Created by Randall Wood on 2022-01-03.
//
@testable import WMATAUI
import SwiftUI
import XCTest

class ColorExtensionTests: XCTestCase {

    func testMetrorailRed() {
    // Red Line Pantone 193c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailRed, Color(.sRGB, red: 191 / 255, green: 13 / 255, blue: 62 / 255))
    }

    func testMetrorailOrange() {
    // Orange Line Pantone 144c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailOrange, Color(.sRGB, red: 237 / 255, green: 139 / 255, blue: 0))
    }

    func testMetrorailBlue() {
    // Blue Line Pantone 2925c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailBlue, Color(.sRGB, red: 0, green: 156 / 255, blue: 222 / 255))
    }

    func testMetrorailGreen() {
    // Green Line Pantone 354c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailGreen, Color(.sRGB, red: 0, green: 177 / 255, blue: 64 / 255))
    }

    func testMetrorailYellow() {
    // Yellow Line Pantone 109c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailYellow, Color(.sRGB, red: 1, green: 209 / 255, blue: 0))
    }

    func testMetrorailSilver() {
    // Silver Line Pantone 443c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrorailSilver, Color(.sRGB, red: 145 / 255, green: 157 / 255, blue: 157 / 255))
    }

    func testMetrobusBlue() {
    // Bus Blue Pantone 294c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrobusBlue, Color(.sRGB, red: 0, green: 47 / 255, blue: 108 / 255, opacity: 1))
    }

    func testMetrobusRed() {
    // Bus Red Pantone 186c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metrobusRed, Color(.sRGB, red: 200 / 255, green: 16 / 255, blue: 46 / 255, opacity: 1))
    }

    func testMetrobusSilver() {
    // Bus Silver Pantone 443c from Brand and Style Guidelines 3/2018 happens to be same as MetrorailColor.silver
    XCTAssertEqual(Color.metrobusSilver, Color.metrorailSilver)
    }

    func testMetroSecondaryRed() {
    // Secondary palette Red Pantone 485c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryRed, Color(.sRGB, red: 218 / 255, green: 41 / 255, blue: 28 / 255, opacity: 1))
    }

    func testMetroSecondaryOrange() {
    // Secondary palette Orange Pantone 172c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryOrange, Color(.sRGB, red: 250 / 255, green: 70 / 255, blue: 22 / 255, opacity: 1))
    }

    func testMetroSecondaryYellow() {
    // Secondary palette Yellow Pantone 137c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryYellow, Color(.sRGB, red: 1, green: 163 / 255, blue: 0, opacity: 1))
    }

    func testMetroSecondaryLightPurple() {
    // Secondary palette Light Purple Pantone 265c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryLightPurple, Color(.sRGB, red: 144 / 255, green: 88 / 255, blue: 205 / 255, opacity: 1))
    }

    func testMetroSecondaryPurple() {
    // Secondary palette Purple Pantone 2579 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryPurple, Color(.sRGB, red: 92 / 255, green: 6 / 255, blue: 140 / 255, opacity: 1))
    }

    func testMetroSecondaryMagenta() {
    // Secondary palette Magenta Pantone 234 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryMagenta, Color(.sRGB, red: 162 / 255, green: 0, blue: 103 / 255, opacity: 1))
    }

    func testMetroSecondaryBlue() {
    // Secondary palette (Dark) Blue Pantone 661 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryBlue, Color(.sRGB, red: 0, green: 53 / 255, blue: 148 / 255, opacity: 1))
    }

    func testMetroSecondaryLightBlue() {
    // Secondary palette Light Blue Pantone 299 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryLightBlue, Color(.sRGB, red: 0, green: 163 / 255, blue: 224 / 255, opacity: 1))
    }

    func testMetroSecondaryGreen() {
    // Secondary palette Green Pantone 575c from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryGreen, Color(.sRGB, red: 103 / 255, green: 130 / 255, blue: 58 / 255, opacity: 1))
    }

    func testMetroSecondaryYellowGreen() {
    // Secondary palette Yellow Green Pantone 390 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryYellowGreen, Color(.sRGB, red: 181, green: 189 / 255, blue: 0, opacity: 1))
    }

    func testMetroSecondaryOceanGreen() {
    // Secondary palette Ocean Green Pantone 7712 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryOceanGreen, Color(.sRGB, red: 0, green: 133 / 255, blue: 155 / 255, opacity: 1))
    }

    func testMetroSecondaryBrightOceanGreen() {
    // Secondary palette Bright Ocean Green Pantone 3262 from Brand and Style Guidelines 3/2018
    XCTAssertEqual(Color.metroSecondaryBrightOceanGreen, Color(.sRGB, red: 0, green: 191 / 255, blue: 179 / 255, opacity: 1))
    }

    func testMetroStationBrown() {
    // Metro Station Brown (Pantone 448 CVC)
        XCTAssertEqual(Color.metroStationBrown, Color(.sRGB, red: 74 / 255, green: 65 / 255, blue: 42 / 255, opacity: 1))
    }

    func testMetroStationLightBrown() {
    // Metro Station Light Brown (Pantone Warm Gray 10 C)
        XCTAssertEqual(Color.metroStationLightBrown, Color(.sRGB, red: 121 / 255, green: 110 / 255, blue: 101 / 255, opacity: 1))
    }
}
