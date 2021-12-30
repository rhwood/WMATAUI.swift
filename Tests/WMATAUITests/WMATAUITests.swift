import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

@available(macCatalyst 14.0, *)
final class WMATAUITests: XCTestCase {

    func testLines() {
        // filter out YLRP from WMATA lines as not current route
        Line.allCases.filter({ $0 != .yellowLineRushPlus }).forEach {
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
        XCTAssertTrue(WMATAUI.mapOrder(.red, .orange))
        XCTAssertTrue(WMATAUI.mapOrder(.orange, .blue))
        XCTAssertTrue(WMATAUI.mapOrder(.blue, .green))
        XCTAssertTrue(WMATAUI.mapOrder(.green, .yellow))
        XCTAssertTrue(WMATAUI.mapOrder(.yellow, .yellowLineRushPlus))
        XCTAssertTrue(WMATAUI.mapOrder(.yellowLineRushPlus, .silver))
        XCTAssertFalse(WMATAUI.mapOrder(.silver, .red))
        XCTAssertFalse(WMATAUI.mapOrder(.red, .red))
    }

    static var allTests = [
        ("testAllLines", testAllLines),
        ("testFont", testFont),
        ("testMapOrder", testMapOrder)
    ]
}
