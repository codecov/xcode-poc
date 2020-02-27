//
//  xcode_pocTests.swift
//  xcode-pocTests
//
//  Created by Edward Izzo on 2/25/20.
//  Copyright © 2020 Codecov. All rights reserved.
//

import XCTest
@testable import xcode_poc

class xcode_pocTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(SwiftText.sayHello(), "Hello from Swift :)")
        XCTAssertEqual(ObjCText.sayHello(), "Hello from Objective-C :)")
        XCTAssertEqual(ObjCPlusPlusText.sayHello(), "Hello from C++ :)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
