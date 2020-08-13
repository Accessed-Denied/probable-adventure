//
//  ItemListDataProviderTests.swift
//  probable-adventureTests
//
//  Created by Rohit Saini on 13/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import probable_adventure

class ItemListDataProviderTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_NumberOfSections_IsTwo() {
        let sut = ItemListDataProvider()
        let tableView = UITableView()
        tableView.dataSource = sut
        let numberOfSections = tableView.numberOfSections
        XCTAssertEqual(numberOfSections, 2)
    }
    
    func test_NumberOfRows_Section1_IsToDoCount() {
        let sut = ItemListDataProvider()
        
        let tableView = UITableView()
        sut.itemManager = ItemManager()
        tableView.dataSource = sut
        sut.itemManager?.add(ToDoItem(title: "Foo"))
    XCTAssertEqual(tableView.numberOfRows(inSection: 0),1)
        sut.itemManager?.add(ToDoItem(title: "Bar"))
        tableView.reloadData()
    XCTAssertEqual(tableView.numberOfRows(inSection: 0),2)
        
    }
    

}
