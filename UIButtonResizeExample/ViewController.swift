//
//  ViewController.swift
//  UIButtonResizeExample
//
//  Created by Jonathan on 27/6/15.
//  Copyright (c) 2015 Chaotic Good. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var buttonHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var buttonWidthConstraint: NSLayoutConstraint!
    
    @IBAction func buttonWasTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.buttonHeightConstraint.constant = CGRectGetHeight(self.view.bounds)
            self.buttonWidthConstraint.constant = CGRectGetWidth(self.view.bounds)
            self.view.layoutIfNeeded()
        })
    }

}

