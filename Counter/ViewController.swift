//
//  ViewController.swift
//  Counter
//
//  Created by Nils Fischer on 08.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0 {
        didSet {
            self.updateLabel()
        }
    }

    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateLabel()
    }
    
    @IBAction func minusButtonPressed(sender: UIButton) {
        count--
    }

    @IBAction func plusButtonPressed(sender: UIButton) {
        count++
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        count = 0
    }
    
    func updateLabel() {
        self.countLabel.text = String(count)
    }
    
}

