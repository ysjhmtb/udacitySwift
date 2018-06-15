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
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    //Always check what function and properties that class inherits from its parent class
    //
    //What we need to do now is figure out how to turn off or disable
    //the stopRecognitionButton. We know that the stopRecordingButton
    //is a UIButton. But if we look at the documentation for UIButton,
    //it's hard to find anything about enabling or turning things on and off.
    //So how do we proceed? Remember that when you look at the documentation for
    //a class like UIButton, you should always check what function and properties
    //that class inherits from its parent class.
    //If you scroll to the botton of this documentation, you'll find the
    //Relationships section, I'll give you a hint.
    //You'll find what what you're looking for if you dig into the UIControl class
    //that the UIButton inherits from.
    //So try diving into this documentation and see what you find.
    //
    //UIButton inherits from UIControl and UIControl has isEnabled property
    //that we can set to true or false.
    
    
    //viewDidLoad is called when your UIViewController is first loaded into
    //memory, even before it's shown on screen.
    //viewWillAppear however is only called
    //when the view controller is about to be presented on screen,
    //but before it is actually on the screen.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(_ sender: Any) {
    
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
}














