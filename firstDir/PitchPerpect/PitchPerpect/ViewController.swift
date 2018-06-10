//
//  ViewController.swift
//  PitchPerpect
//
//  Created by YunSeok Jeon on 2018. 6. 10..
//  Copyright © 2018년 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(_ sender: Any) {
        print("record button was pressed")
        recordingLabel.text = "Recording in Progress"
        
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording button was pressed")
    }
}

