//
//  ToDoItemTests.swift
//  probable-adventureTests
//
//  Created by Rohit Saini on 10/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import probable_adventure

class ToDoItemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Init_GivenTitle_SetTitle(){
        let item = ToDoItem(title:"Foo")
        XCTAssertEqual(item.title, "Foo")
    }
    
    func test_Init_GivenDescription_SetDescription(){
        let item = ToDoItem(title:"",description: "Bar")
        XCTAssertEqual(item.description, "Bar","Should set description")
    }

    func test_Init_GivenTimestamp_SetTimestamp(){
        let item = ToDoItem(title:"",timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0,"Should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
         _ = Location(name: "HR")
    }
    
    func test_Init_SetLocation(){
        let location = Location(name: "HR")
        let item = ToDoItem(title: "",location: location)
        XCTAssertEqual(item.location?.name, "HR","Should set location")
    }
    
    func test_CheckTwoItemsAreEqual(){
        let first = ToDoItem(title: "HR")
        let second = ToDoItem(title: "HR")
        XCTAssertEqual(first, second)
    }
    func test_ItemsWhenLocationDiffer_areNotEqual(){
        let first = ToDoItem(title: "",location: Location(name: "HR"))
        let second = ToDoItem(title: "",location: Location(name: "CHD"))
        XCTAssertNotEqual(first, second)
    }
}
