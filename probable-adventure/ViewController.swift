//
//  ViewController.swift
//  probable-adventure
//
//  Created by Rohit Saini on 17/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func makeHeadline(from string: String) -> String {
        let words = string.components(separatedBy: " ")
        let headlineWords = words.map { (word) -> String in
            var mutableWord = word
            let first = mutableWord.remove(at: mutableWord.startIndex)
            return String(first).uppercased() + mutableWord }
        return headlineWords.joined(separator: " ")
        
    }

}

