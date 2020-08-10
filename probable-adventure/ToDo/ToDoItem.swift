//
//  ToDoItem.swift
//  probable-adventure
//
//  Created by Rohit Saini on 10/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import Foundation

struct ToDoItem{
    let title: String
    let description: String?
    let timestamp: Double?
    let location: Location?
    init(title: String,description: String? = nil,timestamp:Double? = 0.0,location: Location? = nil){
        self.title = title
        self.description = description
        self.timestamp = timestamp
        self.location = location
    }
}

