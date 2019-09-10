//
//  ViewController.swift
//  Clase4
//
//  Created by 2020-1 on 9/10/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
    }
    }
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
        performSegue(withIdentifier: "Yellow", sender: nil)
    }
    }
    
}

