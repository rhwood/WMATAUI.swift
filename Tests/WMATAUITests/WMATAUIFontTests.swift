import XCTest
import SwiftUI
@testable import WMATAUI

@available(iOS 14.0, *)
@available(macCatalyst 14.0, *)
final class WMATAUIFontTests: XCTestCase {

    func testWith() {
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.body), WMATAUIFont.TextStyle.body)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.callout), WMATAUIFont.TextStyle.callout)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.caption), WMATAUIFont.TextStyle.caption1)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.caption2), WMATAUIFont.TextStyle.caption2)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.footnote), WMATAUIFont.TextStyle.footnote)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.headline), WMATAUIFont.TextStyle.headline)
        #if os(tvOS)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.largeTitle), WMATAUIFont.TextStyle.title1)
        #else
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.largeTitle), WMATAUIFont.TextStyle.largeTitle)
        #endif
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.subheadline), WMATAUIFont.TextStyle.subheadline)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.title), WMATAUIFont.TextStyle.title1)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.title2), WMATAUIFont.TextStyle.title2)
        XCTAssertEqual(WMATAUIFont.TextStyle.with(textStyle: Font.TextStyle.title3), WMATAUIFont.TextStyle.title3)
    }
}
