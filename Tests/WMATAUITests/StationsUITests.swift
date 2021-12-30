import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

final class StationsUITests: XCTestCase {

    func testConnections() {
        XCTAssertEqual(Station.metroCenterUpper.connections(to: .red), [.blue, .orange, .silver])
        XCTAssertEqual(Station.farragutNorth.connections(to: .red), [])
        XCTAssertEqual(Station.huntington.connections(to: .yellowLineRushPlus), [.yellow])
    }

    static var allTests = [
        ("testConnections", testConnections)
    ]
}
