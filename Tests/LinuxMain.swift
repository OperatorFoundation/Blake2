import XCTest

import Blake2Tests

var tests = [XCTestCaseEntry]()
tests += Blake2Tests.allTests()
XCTMain(tests)