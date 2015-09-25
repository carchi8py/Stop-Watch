//
//  ViewController.swift
//  Stop Watch
//
//  Created by Chris Archibald on 9/24/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: NSTimer?
    var startTime: NSDate?
    var currentTime: NSDate?

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func start() {
        startTime = NSDate()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("updateTimer:"), userInfo: nil, repeats: true)
    }
    
    func updateTimer(myTimer: NSTimer) {
        //timeLabel.text = myTimer.timeInterval.description
        currentTime = NSDate()
        if startTime != nil {
            var duration = currentTime?.timeIntervalSinceDate(startTime!)
            timeLabel.text = duration?.description
        }
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

