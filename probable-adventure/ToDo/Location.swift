//
//  Location.swift
//  probable-adventure
//
//  Created by Rohit Saini on 10/08/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import Foundation
import CoreLocation

struct Location{
    let name: String
    let coordinate:CLLocationCoordinate2D?
    init(name: String,coordinate:CLLocationCoordinate2D? = nil){
        self.name = name
        self.coordinate = coordinate
    }
    
}

