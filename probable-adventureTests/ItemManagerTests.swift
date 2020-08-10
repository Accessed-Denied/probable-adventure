//
//  ItemManagerTests.swift
//  probable-adventureTests
//
//  Created by Rohit Saini on 10/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import probable_adventure

class ItemManagerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func test_ToDoCount_Initially_Is_Zero(){
        let sut = ItemManager()
        XCTAssertEqual(sut.toDoCount, 0)
    }
    func test_toDoDoneCount_Initially_Is_Zero(){
        let sut = ItemManager()
        XCTAssertEqual(sut.doneCount, 0)
    }
}
