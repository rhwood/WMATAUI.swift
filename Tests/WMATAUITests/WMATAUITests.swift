import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

@available(macCatalyst 14.0, *)
final class WMATAUITests: XCTestCase {

    func testLines() {
        // filter out YLRP from WMATA lines as not current route
        Line.allCases.filter({ $0 != .YLRP }).forEach {
            XCTAssertTrue(WMATAUI.lines.contains($0), "Expected \($0) to be present")
        }
    }

    func testAllLines() {
        // do not filter any WMATA lines
        Line.allCases.forEach {
            XCTAssertTrue(WMATAUI.allLines.contains($0), "Expected \($0) to be present")
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
