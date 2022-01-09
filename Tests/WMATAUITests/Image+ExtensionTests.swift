//
//  ImageExtensionTests.swift
//  
//
//  Created by Randall Wood on 2022-01-09.
//

@testable import WMATAUI
import SwiftUI
import WMATA
import XCTest

class ImageExtensionTests: XCTestCase {

    func testImage() throws {
        let image = Image(metroName: "train").foregroundColor(.green)
        XCTAssertEqual(try image.inspect().image().foregroundColor(), .green)
    }

}
