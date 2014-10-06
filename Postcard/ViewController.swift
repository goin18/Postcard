//
//  ViewController.swift
//  Postcard
//
//  Created by Marko Budal on 06/10/14.
//  Copyright (c) 2014 Goin Developer. All rights reserved.
//

import UIKit  //knjiznica kjer se vse nahaja

class ViewController: UIViewController {     // ta class se klice ViewController in ima vse funkcije iz UIVC

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    //to je funkcija, ki nalizi aplikacijo
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
        NSLog("Moj string")
        //Tu dodam komentar
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()  //funkcija ki skrije tipkovnico
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

