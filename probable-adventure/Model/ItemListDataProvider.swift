//
//  ItemListDataProvider.swift
//  probable-adventure
//
//  Created by Rohit Saini on 13/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject,UITableViewDataSource {
    var itemManager: ItemManager?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemManager?.toDoCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

}
