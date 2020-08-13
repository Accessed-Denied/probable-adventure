//
//  ItemManager.swift
//  probable-adventure
//
//  Created by Rohit Saini on 10/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import Foundation

class ItemManager{
    var toDoCount: Int { items.count }
    var doneCount: Int {
        return doneItems.count }
    private var items: [ToDoItem] = []
    private var doneItems: [ToDoItem] = []
    func add(_ item: ToDoItem){
        if !items.contains(item){
             items.append(item)
        }
       
    }
    func item(at: Int) -> ToDoItem{
        return items[at]
    }
    func checkItem(at: Int){
        let item = items.remove(at: at)
        doneItems.append(item)
    }
    func dontItem(at: Int) -> ToDoItem{
        return doneItems[at]
    }
    func removeAll(){
        items.removeAll()
        doneItems.removeAll()
    }
}
