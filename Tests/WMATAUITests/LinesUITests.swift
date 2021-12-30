import XCTest
import SwiftUI
import WMATA
import ViewInspector
@testable import WMATAUI

final class LinesUITests: XCTestCase {

    func testColor() {
        XCTAssertEqual(Line.red.color, MetroRailColor.red)
        XCTAssertEqual(Line.orange.color, MetroRailColor.orange)
        XCTAssertEqual(Line.blue.color, MetroRailColor.blue)
        XCTAssertEqual(Line.green.color, MetroRailColor.green)
        XCTAssertEqual(Line.yellow.color, MetroRailColor.yellow)
        XCTAssertEqual(Line.yellowLineRushPlus.color, MetroRailColor.yellow)
        XCTAssertEqual(Line.silver.color, MetroRailColor.silver)
    }

    func testTextColor() {
        XCTAssertEqual(Line.red.textColor, .white)
        XCTAssertEqual(Line.orange.textColor, .black)
        XCTAssertEqual(Line.blue.textColor, .white)
        XCTAssertEqual(Line.green.textColor, .white)
        XCTAssertEqual(Line.yellow.textColor, .black)
        XCTAssertEqual(Line.yellowLineRushPlus.textColor, .black)
        XCTAssertEqual(Line.silver.textColor, .black)
    }

    func testDot() {
        let dot = Line.red.dot(style: .headline, factor: 1.0)
        XCTAssertEqual(try dot.inspect().shape(0).foregroundColor(), MetroRailColor.red)
        XCTAssertEqual(try dot.inspect().fixedWidth(),  UIFont.preferredFont(forTextStyle: .headline).pointSize)
    }

    static var allTests = [
        ("testColor", testColor),
        ("testTextColor", testTextColor)
    ]
}
