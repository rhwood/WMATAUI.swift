import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LinesUITests.allTests),
        testCase(StationsUITests.allTests),
        testCase(UIFontExtensionTests.allTests),
        testCase(WMATAUITests.allTests)
    ]
}
#endif
