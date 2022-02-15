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
}

@available(iOS 14.0, *)
final class WMATAUI_PreviewsTests: XCTestCase {

    // test that previews are inspectable in all CI architectures as
    // we likely preview only in the architecture(s) we use most
    func testPreview() {
        XCTAssertNoThrow(try WMATAUI_Preview.previews.inspect())
    }
}
