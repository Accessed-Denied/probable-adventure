//
//  probable_adventureTests.swift
//  probable-adventureTests
//
//  Created by Rohit Saini on 17/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import probable_adventure

class probable_adventureTests: XCTestCase {

    var viewController: ViewController!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital() {
      let inupt = "here is Another Example"
      let output = "Here Is Another Example"
      let expectedOutput = viewController.makeHeadline(from: inupt)
      XCTAssertEqual(expectedOutput, output)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
