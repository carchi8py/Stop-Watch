//
//  ViewController.swift
//  Stop Watch
//
//  Created by Chris Archibald on 9/24/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func start() {
        
    }
    
    func stop() {
        
    }
    
    func reset() {
        
    }

    @IBAction func StartButtonPressed(sender: AnyObject) {
        start()
    }

    @IBAction func StopButtonPressed(sender: AnyObject) {
        stop()
    }
    
    @IBAction func ResetButtonPressed(sender: AnyObject) {
        reset()
    }
}

