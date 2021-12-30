import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

@available(macCatalyst 14.0, *)
final class WMATAUITests: XCTestCase {

    func testFont() {
        XCTAssertEqual(Font.metroFont(.headline),
                       Font.custom("Helvetica Neue",
                                   size: WMATAUIFont.preferredFont(forTextStyle: .headline).pointSize,
                                   relativeTo: .headline))
    }

    static var allTests = [
        ("testFont", testFont)
    ]
}
