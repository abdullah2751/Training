//
//  ViewController.swift
//  Training
//
//  Created by Игорь Александров on 08.06.2019.
//  Copyright © 2019 Alexandroff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var clicks = 0
	@IBOutlet weak var counterLabel: UILabel!
	@IBAction func button(_ sender: Any) {
		clicks += 1
		counterLabel.text = String(clicks)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		counterLabel.text = String(clicks)
		
		
    }


}

