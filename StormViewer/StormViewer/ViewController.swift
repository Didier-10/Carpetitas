//
//  ViewController.swift
//  StormViewer
//
//  Created by 2020-1 on 9/10/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix ("nssl"){
                pictures.append(item)
        }
        // Do any additional setup after loading the view.
    }
    print(pictures)
}
    
}
