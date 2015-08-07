//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Yang Fan on 8/6/15.
//  Copyright (c) 2015 Yang Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true;
        recordButton.enabled = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopButton.hidden = false;
        recordButton.enabled = false;
        println("in recordAudio")
    }

    @IBAction func stopRecord(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.hidden = true;
        recordButton.enabled = true;
    }
}

