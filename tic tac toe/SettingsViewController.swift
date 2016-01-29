//
//  SettingsViewController.swift
//  tic tac toe
//
//  Created by Robert Repnak on 17.10.15.
//  Copyright © 2015 Hanno Repnak. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var namePlayer1Textfield: UITextField!
    @IBOutlet weak var namePlayer2Textfield: UITextField!
    
    @IBOutlet weak var humanComputerSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfFieldsSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var startPlayerSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var figurPlayer1Label: UILabel!
    
    
    @IBOutlet weak var figurPlayer2Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        namePlayer1Textfield.text = SettingsManager.sharedInstance().getNamePlayer1();
        
        namePlayer2Textfield.text = SettingsManager.sharedInstance().getNamePlayer2();
        
        if (SettingsManager.sharedInstance().getNumberOfFields() == GlobalConstants.GAME_4x4)
        {
            numberOfFieldsSegmentControl.selectedSegmentIndex = 1;
        } else
        {
            numberOfFieldsSegmentControl.selectedSegmentIndex = 0;
        }
        
        if (SettingsManager.sharedInstance().getOponent() == GlobalConstants.OPONENT_COMPUTER)
        {
            humanComputerSegmentControl.selectedSegmentIndex = 1;
        } else
        {
            humanComputerSegmentControl.selectedSegmentIndex = 0;
        }
        
        if (SettingsManager.sharedInstance().getstartplayer() == GlobalConstants.START_PLAYER2)
        {
            startPlayerSegmentControl.selectedSegmentIndex = 1;
        } else
        {
            startPlayerSegmentControl.selectedSegmentIndex = 0;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func namePlayer1Changed(sender: UITextField) {
        SettingsManager.sharedInstance().setNamePlayer1(sender.text!);
    }
    
    @IBAction func namePlayer2Changed(sender: UITextField) {
        SettingsManager.sharedInstance().setNamePlayer2(sender.text!);
    }
    
    @IBAction func numberOfFields(sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
            SettingsManager.sharedInstance().setNumberOfFields(GlobalConstants.GAME_3x3);
        } else
        {
            SettingsManager.sharedInstance().setNumberOfFields(GlobalConstants.GAME_4x4);
        }
        
    }

    @IBAction func startPlayer(sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
            SettingsManager.sharedInstance().setStartPlayer(GlobalConstants.START_PLAYER1);
        } else
        {
            SettingsManager.sharedInstance().setStartPlayer(GlobalConstants.START_PLAYER2);
        }
    }
    @IBAction func humanComputer(sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
                SettingsManager.sharedInstance().setOponent(GlobalConstants.OPONENT_HUMAN);
        } else
        {
            SettingsManager.sharedInstance().setOponent(GlobalConstants.OPONENT_COMPUTER);
        }
    }
 
    
}