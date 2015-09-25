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
    var stopTime: NSDate?

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func start() {
        startTime = NSDate()
        if timer == nil {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("updateTimer:"), userInfo: nil, repeats: true)
        }
    }
    
    func updateTimer(myTimer: NSTimer) {
        currentTime = NSDate()
        if startTime != nil {
            var duration = currentTime?.timeIntervalSinceDate(startTime!)
            
            var dateFormatter = NSDateFormatter()
            //Format the time so it looks nice
            dateFormatter.dateFormat = "HH:mm:ss.SS"
            //Set the timezone to UTC so that the time is always 0 (if not
            // it will do midnight - our time zone)
            dateFormatter.timeZone = NSTimeZone(name: "UTC")
            
            var date = NSDate(timeIntervalSince1970: duration!)
            timeLabel.text = dateFormatter.stringFromDate(date)
            
        }
    }
    
    func stop() {
        stopTime = NSDate()
        timer?.invalidate()
        timer = nil
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

