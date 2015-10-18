//
//  GameViewController.swift
//  tic tac toe
//
//  Created by Robert Repnak on 17.10.15.
//  Copyright © 2015 Hanno Repnak. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var selectedArray: [NSInteger] = [0,0,0,0,0,0,0,0,0];
    var lastUser: NSInteger = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func setItem(sender: UIButton)
    {
        var sign :String = "";
        let tag : NSInteger = sender.tag - 1000;
        if (tag < selectedArray.count)
        {
            if (selectedArray[tag] == 0)
            {
                selectedArray[tag] = lastUser;
                if (lastUser == 1)
                {
                    lastUser = 2;
                    sign = "X"
                } else
                {
                    lastUser = 1;
                    sign = "O"
                }
                sender.setTitle(sign,forState: .Normal);
            }
        }
        if (isWinner(1))
        {
            let alertView = UIAlertController(title: "Default Style", message: "A standard alert.",preferredStyle: .Alert)
            self.presentViewController(alertView, animated: true, completion: nil)

            
        } else if (isWinner(2))
        {
            
        }
        
    }
    
    @IBAction func newGame(sender: AnyObject) {
        selectedArray = [0,0,0,0,0,0,0,0,0];
        for i in 0...8
        {
            let button :UIButton = self.view.viewWithTag(1000+i) as! UIButton;
            button.setTitle("",forState: .Normal);
            button.setTitleColor(UIColor.blackColor(), forState: .Normal);
        }
        lastUser = 1;
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    
    @IBAction func setButtonTextColorToRed(buttonID : NSInteger) {
        let button :UIButton = self.view.viewWithTag(1000+buttonID) as! UIButton;
        button.setTitleColor(UIColor.redColor(), forState: .Normal);
    }
    
    func isWinner(user:NSInteger) -> Bool
    {
        if ((selectedArray[0] == user) && (selectedArray[3] == user) && (selectedArray[6] == user))
        {
            setButtonTextColorToRed(0);
            setButtonTextColorToRed(3);
            setButtonTextColorToRed(6);
            
            return true;
        } else if ((selectedArray[1] == user) && (selectedArray[4] == user) && (selectedArray[7] == user))
        {
            setButtonTextColorToRed(1);
            setButtonTextColorToRed(4);
            setButtonTextColorToRed(7);
            return true;
        } else if ((selectedArray[2] == user) && (selectedArray[5] == user) && (selectedArray[8] == user))
        {
            setButtonTextColorToRed(2);
            setButtonTextColorToRed(5);
            setButtonTextColorToRed(8);
            return true;
        } else if ((selectedArray[0] == user) && (selectedArray[1] == user) && (selectedArray[2] == user))
        {
            setButtonTextColorToRed(0);
            setButtonTextColorToRed(1);
            setButtonTextColorToRed(2);
            return true;
        } else if ((selectedArray[3] == user) && (selectedArray[4] == user) && (selectedArray[5] == user))
        {
            setButtonTextColorToRed(3);
            setButtonTextColorToRed(4);
            setButtonTextColorToRed(5);
            return true;
        } else if ((selectedArray[6] == user) && (selectedArray[7] == user) && (selectedArray[8] == user))
        {
            setButtonTextColorToRed(6);
            setButtonTextColorToRed(7);
            setButtonTextColorToRed(8);
            return true;
        } else if ((selectedArray[0] == user) && (selectedArray[4] == user) && (selectedArray[8] == user))
        {
            setButtonTextColorToRed(0);
            setButtonTextColorToRed(4);
            setButtonTextColorToRed(8);
            return true;
        } else if ((selectedArray[2] == user) && (selectedArray[4] == user) && (selectedArray[6] == user))
        {
            setButtonTextColorToRed(2);
            setButtonTextColorToRed(4);
            setButtonTextColorToRed(6);
            return true;
        }
        
        
        return false;
    }
}