import XCTest
import SwiftUI
@testable import WMATAUI

final class UIFontExtensionTests: XCTestCase {

    func testWith() {
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.body), UIFont.TextStyle.body)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.callout), UIFont.TextStyle.callout)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.caption), UIFont.TextStyle.caption1)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.caption2), UIFont.TextStyle.caption2)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.footnote), UIFont.TextStyle.footnote)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.headline), UIFont.TextStyle.headline)
        #if os(tvOS)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.largeTitle), UIFont.TextStyle.title1)
        #else
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.largeTitle), UIFont.TextStyle.largeTitle)
        #endif
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.subheadline), UIFont.TextStyle.subheadline)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.title), UIFont.TextStyle.title1)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.title2), UIFont.TextStyle.title2)
        XCTAssertEqual(UIFont.TextStyle.with(textStyle: Font.TextStyle.title3), UIFont.TextStyle.title3)
    }

    static var allTests = [
        ("testWith", testWith)
    ]
}
