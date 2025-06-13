import XCTest
import SwiftUI
#if !os(macOS)
import UIKit
#endif
import WMATA
import ViewInspector
@testable import WMATAUI

@available(macOS 11.0, iOS 14.0, *)
final class LinesUITests: XCTestCase {

    func testColor() {
        XCTAssertEqual(Line.red.color, .metrorailRed)
        XCTAssertEqual(Line.orange.color, .metrorailOrange)
        XCTAssertEqual(Line.blue.color, .metrorailBlue)
        XCTAssertEqual(Line.green.color, .metrorailGreen)
        XCTAssertEqual(Line.yellow.color, .metrorailYellow)
        XCTAssertEqual(Line.silver.color, .metrorailSilver)
    }

    func testTextColor() {
        XCTAssertEqual(Line.red.textColor, .white)
        XCTAssertEqual(Line.orange.textColor, .black)
        XCTAssertEqual(Line.blue.textColor, .white)
        XCTAssertEqual(Line.green.textColor, .white)
        XCTAssertEqual(Line.yellow.textColor, .black)
        XCTAssertEqual(Line.silver.textColor, .black)
    }

    func testDot() {
        let dot = Line.red.dot(style: .headline, factor: 1.0)
        XCTAssertEqual(try dot.inspect().image(0).foregroundColor(), .metrorailRed)
        XCTAssertEqual(try dot.inspect().image(0).actualImage().name(), "circle.fill")
    }
    
    func testDotSize() throws {
        let dot = Line.red.dot(style: .headline, factor: 1.0)
#if targetEnvironment(macCatalyst) // macCatalyst builds as if iOS without this target environment
        let baseFontSize = 19.0
        let largeFontSize = 19.0
#elseif os(macOS)
        let baseFontSize = 15.0
        let largeFontSize = 15.0
#elseif os(iOS) // not sure if these are iPhone only sizes, or iPhone + iPad sizes
        let baseFontSize = 19.0
        let largeFontSize = 55.0
#elseif os(tvOS)
        let baseFontSize = 44.0
        let largeFontSize = 44.0
#else // watchOS
        let baseFontSize = 40.0
        let largeFontSize = 40.0
        try XCTSkipIf(true, "showView has empty implementation on WatchKit")
#endif
        
        let baseSizeExpectation = expectation(description: #function)
        showView(
            dot
                .readSize { size in
                    XCTAssertEqual(size.height, baseFontSize)
                    baseSizeExpectation.fulfill()
                }
        )
        
        let largeSizeExpectation = expectation(description: "large\(#function)")
        showView(
            dot
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                .readSize { size in
                    XCTAssertEqual(size.height, largeFontSize)
                    largeSizeExpectation.fulfill()
                }
        )
        
        waitForExpectations(timeout: 1)
    }

    @available(iOS 14.0, *)
    @available(macCatalyst 14.0, *)
    func testRoundel() throws {
        let roundel = Line.red.roundel(style: .headline)
        let text = try roundel.inspect().find(text: Line.red.rawValue)
        XCTAssertEqual(try text.attributes().foregroundColor(), Line.red.textColor)
    }

    func testComparable() {
        let unsorted: [Line] = [.yellow, .silver, .red]
        XCTAssertNotEqual(unsorted, unsorted.sorted())
        XCTAssertEqual([.red, .yellow, .silver], unsorted.sorted())
        XCTAssertEqual([.silver, .yellow, .red], unsorted.sorted(by: >))
    }
}

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue = CGSize.zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

extension View {
    func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Color.clear
                    .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}

func showView<T: View>(_ view: T) {
#if os(macOS)
    let window = NSWindow()
    window.contentViewController = NSHostingController(rootView: view)
    window.makeKeyAndOrderFront(nil)
#elseif os(watchOS)
#else
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = UIHostingController(rootView: view)
    window.makeKeyAndVisible()
#endif
}
