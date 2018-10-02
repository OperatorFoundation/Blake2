import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Blake2Tests.allTests),
    ]
}
#endif