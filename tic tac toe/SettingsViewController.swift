//
//  SettingsViewController.swift
//  tic tac toe
//
//  Created by Robert Repnak on 17.10.15.
//  Copyright © 2015 Hanno Repnak. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var textfieldNamePlayer1: UITextField!
    @IBOutlet weak var textfieldNamePlayer2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textfieldNamePlayer1.text = SettingsManager.sharedInstance().getNamePlayer1();
        
        textfieldNamePlayer2.text = SettingsManager.sharedInstance().getNamePlayer2();
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prepareForUnwind(sender: AnyObject) {
        
    }
    
    @IBAction func namePlayer1Changed(sender: UITextField) {
        SettingsManager.sharedInstance().setNamePlayer1(sender.text!);
    }
    
    @IBAction func namePlayer2Changed(sender: UITextField) {
        SettingsManager.sharedInstance().setNamePlayer2(sender.text!);
    }
    @IBAction func colorPlayer1(sender: UIButton) {
    }
    
    @IBAction func colerPlayer2(sender: UIButton) {
        //
    }
}