//
//  SettingsManager.swift
//  tic tac toe
//
//  Created by Robert Repnak on 22.11.15.
//  Copyright © 2015 Hanno Repnak. All rights reserved.
//

import Foundation

class SettingsManager {
    static var instance : SettingsManager!
    
    private var namePlayer1 : String;
    private var namePlayer2 : String;
    
    class func sharedInstance() -> SettingsManager {
        self.instance = (self.instance ?? SettingsManager())
        return self.instance
    }
    
    init() {
        // perform some initialization here
        self.namePlayer1 = "Spieler 1";
        self.namePlayer2 = "Spieler 2";
    }
    
    func setNamePlayer1(newName: String)
    {
        self.namePlayer1 = newName;
    }
    
    func setNamePlayer2(newName: String)
    {
        self.namePlayer2 = newName;
    }
    
    func  getNamePlayer1() -> String
    {
        return self.namePlayer1;
    }
    
    func getNamePlayer2() -> String
    {
        return self.namePlayer2;
    }
}