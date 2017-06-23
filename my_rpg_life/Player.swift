//
//  Player.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 20/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

public struct MyPlayer {
    static var myPlayer:Player = Player();
}

enum EClasses {
    case Alquemist
    case Knight
    case Barbarian
    case Paladin
    case Ranger
    case Mage
    case Warlock
    case Thieve
}

class Player: UIView {
    private var _firstName:String!
    private var _surName:String!
    private var _email:String!
    private var _nickname:String!
    private var _password:String!
    
    //private var _class:EClasses!
    //private var _invetory:[String]!
    //private var _xp:Int32!
    //private var _level:Int8!
    //private var _sp:Int16!
    //private var _hp:Int16!
    
    
    var firstName:String {
        get {
            return _firstName;
        }
        set {
            _firstName = newValue;
        }
    }
    
    var surName:String {
        get {
            return _surName;
        }
        set {
            _surName = newValue;
        }
    }
    
    var email:String {
        get {
            return _email;
        }
        set {
            _email = newValue;
        }
    }
    
    var nickname:String {
        get {
            return _nickname;
        }
        set {
            _nickname = newValue;
        }
    }
    
    var password:String {
        get {
            return _password;
        }
        set {
            _password = newValue;
        }
    }
    
    func getName() -> String {
        return "\(firstName)";
    }
    
    func getSurname() -> String {
        return "\(surName)";
    }
    
    func getWholeName() -> String {
        return "\(firstName) \(surName)";
    }
    
    func getEmail() -> String {
        return "\(email)";
    }
    
    func getNickname() -> String {
        return "\(nickname)";
    }

}
