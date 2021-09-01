import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

final class LinesUITests: XCTestCase {

    func testColor() {
        XCTAssertEqual(Line.RD.color, MetroRailColor.red)
        XCTAssertEqual(Line.OR.color, MetroRailColor.orange)
        XCTAssertEqual(Line.BL.color, MetroRailColor.blue)
        XCTAssertEqual(Line.GR.color, MetroRailColor.green)
        XCTAssertEqual(Line.YL.color, MetroRailColor.yellow)
        XCTAssertEqual(Line.YLRP.color, MetroRailColor.yellow)
        XCTAssertEqual(Line.SV.color, MetroRailColor.silver)
    }

    func testTextColor() {
        XCTAssertEqual(Line.RD.textColor, .white)
        XCTAssertEqual(Line.OR.textColor, .black)
        XCTAssertEqual(Line.BL.textColor, .white)
        XCTAssertEqual(Line.GR.textColor, .white)
        XCTAssertEqual(Line.YL.textColor, .black)
        XCTAssertEqual(Line.YLRP.textColor, .black)
        XCTAssertEqual(Line.SV.textColor, .black)
    }

    static var allTests = [
        ("testColor", testColor),
        ("testTextColor", testTextColor)
    ]
}
