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
    var sut: ItemManager!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ItemManager()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    func test_ToDoCount_Initially_Is_Zero(){
       
        XCTAssertEqual(sut.toDoCount, 0)
    }
    func test_toDoDoneCount_Initially_Is_Zero(){
        
        XCTAssertEqual(sut.doneCount, 0)
    }
    
    func test_AddItem_Inc_CountToOne(){
        sut.add(ToDoItem(title: ""))
        XCTAssertEqual(sut.toDoCount, 1)
    }
    
    func test_return_added_itemAt(){
        let item = ToDoItem(title: "HR")
        sut.add(item)
        let returnedItem = sut.item(at: 0)
        XCTAssertEqual(returnedItem.title, item.title)
    }
    
    func test_CheckItem(){
        sut.add(ToDoItem(title: "HR"))
        sut.checkItem(at: 0)
        XCTAssertEqual(sut.toDoCount, 0)
        XCTAssertEqual(sut.doneCount, 1)
    }
    func test_CheckRemovedItemsfromtodo(){
        let first = ToDoItem(title: "first")
        let second = ToDoItem(title: "second")
        
        sut.add(first)
        sut.add(second)
        sut.checkItem(at: 0)
    
    }
    func test_DoneItemAt_returnedCheckedItem(){
        let item = ToDoItem(title: "HR")
        sut.add(item)
        sut.checkItem(at: 0)
        let returnedItem = sut.dontItem(at: 0)
        XCTAssertEqual(returnedItem.title, item.title)
    }
   
    
    func test_Add_WhenItem_is_Already_added_donotincementCount(){
        sut.add(ToDoItem(title: "HR"))
        sut.add(ToDoItem(title: "HR"))
        
        XCTAssertEqual(sut.toDoCount, 1)
    }
}
