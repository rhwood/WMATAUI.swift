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

    func testTextRoundel() throws {
        let roundel = WMATAUI.roundel(text: "WW", color: .red, textColor: .white, style: .headline)
        let text = try roundel.inspect().find(text: "WW")
        XCTAssertEqual(try text.attributes().foregroundColor(), .white)
    }

    func testImageRoundel() throws {
        let image = Image(metroName: "train")
        let roundel = WMATAUI.roundel(image: image, color: .red, textColor: .white, style: .headline)
        let inspectable = try roundel.inspect().zStack().anyView(1).image()
        XCTAssertEqual(try inspectable.actualImage(), image)
        XCTAssertEqual(try inspectable.foregroundColor(), .white)
    }

}
