//
//  ItemListViewControllerTest.swift
//  probable-adventureTests
//
//  Created by Rohit Saini on 13/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import XCTest
@testable import probable_adventure

class ItemListViewControllerTest: XCTestCase {
    var sut: ItemListViewController!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let itemVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ItemListViewController")
        sut = itemVC as! ItemListViewController
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    
    func test_TableView_AfterViewDidLoad_IsNotNil(){
        
        XCTAssertNotNil(sut.tableView)
    }
    
    func test_LoadingView_SetsTableViewDataSource(){
        
        XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
    }
    
    func test_LoadingView_SetsTableViewDelegate() { XCTAssertTrue(sut.tableView.delegate is ItemListDataProvider)
    }
    
    
    func test_LoadingView_DataSourceEqualDelegate() { XCTAssertEqual(sut.tableView.dataSource as? ItemListDataProvider,
                                                                     sut.tableView.delegate as? ItemListDataProvider)
    }


}
