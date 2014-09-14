//
//  ViewController.swift
//  Postcard
//
//  Created by Neil Gordon on 14/09/14.
//  Copyright (c) 2014 Neil Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
   
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
        {
        // Code will evaluate when we press the button
            messageLabel.text = enterMessageTextField.text
            messageLabel.hidden = false
            enterMessageTextField.text = ""
            enterMessageTextField.resignFirstResponder()
            messageLabel.textColor = UIColor.redColor()
            sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

