import XCTest
import SwiftUI
import WMATA
import ViewInspector
@testable import WMATAUI

final class LinesUITests: XCTestCase {

    func testColor() {
        XCTAssertEqual(Line.red.color, .metrorailRed)
        XCTAssertEqual(Line.orange.color, .metrorailOrange)
        XCTAssertEqual(Line.blue.color, .metrorailBlue)
        XCTAssertEqual(Line.green.color, .metrorailGreen)
        XCTAssertEqual(Line.yellow.color, .metrorailYellow)
        XCTAssertEqual(Line.yellowLineRushPlus.color, .metrorailYellow)
        XCTAssertEqual(Line.silver.color, .metrorailSilver)
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
        XCTAssertEqual(try dot.inspect().shape(0).foregroundColor(), .metrorailRed)
        XCTAssertEqual(try dot.inspect().fixedWidth(),  WMATAUIFont.preferredFont(forTextStyle: .headline).pointSize)
    }

    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    func testRoundel() throws {
        let roundel = Line.red.roundel(style: .headline)
        let text = try roundel.inspect().find(text: Line.red.rawValue)
        XCTAssertEqual(try text.attributes().foregroundColor(), Line.red.textColor)
    }

    func testAllInMapOrder() {
        // filter out YLRP from WMATA lines as not current route
        Line.allCases.filter({ $0 != .yellowLineRushPlus }).forEach {
            XCTAssertTrue(Line.allInMapOrder.contains($0), "Expected \($0) to be present")
        }
    }

    func testComparable() {
        let unsorted: [Line] = [.yellow, .silver, .red]
        XCTAssertNotEqual(unsorted, unsorted.sorted())
        XCTAssertEqual([.red, .yellow, .silver], unsorted.sorted())
        XCTAssertEqual([.silver, .yellow, .red], unsorted.sorted(by: >))
    }
}
