//
//  SettingsManager.swift
//  tic tac toe
//
//  Created by Robert Repnak on 22.11.15.
//  Copyright © 2015 Hanno Repnak. All rights reserved.
//

import Foundation


struct GlobalConstants {
    static let GAME_3x3 = "3x3";
    static let GAME_4x4 = "4x4";
    
    static let START_PLAYER1 = "start1";
    static let START_PLAYER2 = "start2";
    
    static let OPONENT_HUMAN = "human";
    static let OPONENT_COMPUTER = "computer";
    
    
    
}




class SettingsManager {
    
    
    
    
    
    static var instance : SettingsManager!
    
    private var namePlayer1 : String;
    private var namePlayer2 : String;
    private var numberOfFields : String;
    private var oponent : String;
    private var startPlayer : String;
    
    
    
    
    
    class func sharedInstance() -> SettingsManager {
        self.instance = (self.instance ?? SettingsManager())
        return self.instance
    }
    
    init() {
        // perform some initialization here
        self.namePlayer1 = "Spieler 1";
        self.namePlayer2 = "Spieler 2";
        self.numberOfFields = GlobalConstants.GAME_3x3;
        self.oponent = GlobalConstants.OPONENT_HUMAN;
        self.startPlayer = GlobalConstants.START_PLAYER1;
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
    
    
    func setNumberOfFields(numberOfFields: String)
    {
        self.numberOfFields = numberOfFields;
    }
    
    func getNumberOfFields() -> String
    {
        return self.numberOfFields;
    }
    
    func setOponent(oponent: String)
    {
        self.oponent = oponent;
    }
    
    func getOponent() -> String
    {
        return self.oponent;
    }
    
    func setStartPlayer(startPlayer: String)
    {
        self.startPlayer = startPlayer;
    }
    
    func getstartplayer() -> String
    {
        return self.startPlayer;
    }





    
}