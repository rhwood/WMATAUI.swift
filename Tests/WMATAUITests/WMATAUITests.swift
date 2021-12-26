import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

@available(macCatalyst 14.0, *)
final class WMATAUITests: XCTestCase {

    func testLines() {
        for line in Line.allCases {
            XCTAssertTrue(WMATAUI.lines.contains(line))
        }
    }

    func testAllLines() {
        XCTAssertTrue(WMATAUI.allLines.contains(.YLRP))
        for line in WMATAUI.lines {
            XCTAssertTrue(WMATAUI.allLines.contains(line))
        }
    }

    func testFont() {
        XCTAssertEqual(WMATAUI.font(.headline),
                       Font.custom("Helvetica Neue",
                                   size: UIFont.preferredFont(forTextStyle: .headline).pointSize,
                                   relativeTo: .headline))
    }

    func testMapOrder() {
        XCTAssertTrue(WMATAUI.mapOrder(.RD, .OR))
        XCTAssertTrue(WMATAUI.mapOrder(.OR, .BL))
        XCTAssertTrue(WMATAUI.mapOrder(.BL, .GR))
        XCTAssertTrue(WMATAUI.mapOrder(.GR, .YL))
        XCTAssertTrue(WMATAUI.mapOrder(.YL, .YLRP))
        XCTAssertTrue(WMATAUI.mapOrder(.YLRP, .SV))
        XCTAssertFalse(WMATAUI.mapOrder(.SV, .RD))
        XCTAssertFalse(WMATAUI.mapOrder(.RD, .RD))
    }

    static var allTests = [
        ("testAllLines", testAllLines),
        ("testFont", testFont),
        ("testMapOrder", testMapOrder)
    ]
}
