import XCTest
import SwiftUI
import WMATA
@testable import WMATAUI

@available(iOS 14.0, *)
@available(macCatalyst 14.0, *)
final class WMATAUITests: XCTestCase {

    func testFont() {
        XCTAssertEqual(Font.metroFont(.headline),
                       Font.custom("Helvetica Neue",
                                   size: WMATAUIFont.preferredFont(forTextStyle: .headline).pointSize,
                                   relativeTo: .headline))
    }

    func testRoundelImage() {
        XCTAssertNotNil(WMATAUI.roundel(image: Image(systemName: "tram.fill"), color: .green, textColor: .pink, style: .body, factor: 0.5))
    }
}
