import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

final class StationsUITests: XCTestCase {

    func testConnections() {
        XCTAssertEqual(Station.A01.connections(to: .RD), [.BL, .OR, .SV])
        XCTAssertEqual(Station.A02.connections(to: .RD), [])
        XCTAssertEqual(Station.C15.connections(to: .YLRP), [.YL])
    }

    static var allTests = [
        ("testConnections", testConnections)
    ]
}
