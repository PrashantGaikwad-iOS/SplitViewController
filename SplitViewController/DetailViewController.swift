//
//  ViewController.swift
//  SplitViewController
//
//  Created by Prashant Gaikwad on 08/10/19.
//  Copyright © 2019 Prashant Gaikwad. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    var tempStr = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countLabel.text = tempStr
    }


}

