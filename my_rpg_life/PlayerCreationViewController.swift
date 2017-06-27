//
//  PlayerCreationViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 20/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class PlayerCreationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    var pb1:Bool!
    var pb2:Bool!
    @IBOutlet weak var nicknameText: UITextField!
    @IBOutlet weak var raceText: UITextField!
    let pickerView = UIPickerView()
    var pickOption:[String] = ["", "Human", "Dwarf", "Gnome", "Elf", "Half Elf", "Dark Elf", "Half Orc", "Orc", "Half Dragon", "Jinn", "Soul"]
    
    var pickOption2:[String] = ["Barbarian", "Mage", "Druid", "Cleric", "Knight", "Paladin", "Witch"]
    
    @IBOutlet weak var classRText: UITextField!
    
    
    @IBOutlet weak var strPoints: UILabel!
    @IBOutlet weak var conPoints: UILabel!
    @IBOutlet weak var dexPoints: UILabel!
    @IBOutlet weak var intPoints: UILabel!
    @IBOutlet weak var wisPoints: UILabel!
    @IBOutlet weak var charPoints: UILabel!
    
    var totalPoints:Int!
    var strPointsI:Int!
    var conPointsI:Int!
    var dexPointsI:Int!
    var intPointsI:Int!
    var wisPointsI:Int!
    var charPointsI:Int!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pb1 = false
        pb2 = false
        
        totalPoints = 28;
        
        strPointsI = 0;
        conPointsI = 0;
        dexPointsI = 0;
        intPointsI = 0;
        wisPointsI = 0;
        charPointsI = 0;
        
        strPoints.text = "0";
        conPoints.text = "0";
        dexPoints.text = "0";
        intPoints.text = "0";
        wisPoints.text = "0";
        charPoints.text = "0";

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pb1 && !pb2)
        {
            return pickOption.count
        }
        else
        {
            return pickOption2.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pb1 && !pb2)
        {
            return pickOption[row]
        }
        else
        {
            return pickOption2[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pb1 && !pb2)
        {
            raceText.text = pickOption[row]
        }
        else
        {
            classRText.text = pickOption2[row]
        }
        
        self.view.endEditing(true);
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let quest = Quests();
        quest._title = "Work!";
        quest._details = "Work as a slave!";
        quest._renewable = true;
        quest._reward = 20;
        
        let player = Player();
        player.email = "caiocozza.art@gmail.com";
        player.firstName = "Caio";
        player.surName = "Cozza";
        player.nickname = "ArchMage";
        player.race = "Human";
        player.classe = "Mage";
        player.str = 8;
        player.con = 10;
        player.dex = 8;
        player.int = 18;
        player.wis = 16;
        player.char = 10;
        player.gender = "Male";
        player.password = "4321";
        player.xp = 0;
        player._quests = Array();
        player._quests.append(quest);
 
        MyPlayer.myPlayer = player;
    }
    
    @IBAction func nicknameEnd1(_ sender: UITextField) {
        self.view.endEditing(true)
    }
    

    @IBAction func classRAction(_ sender: UITextField) {
        pb1 = false
        pb2 = true
        pickerView.delegate = self
        classRText.inputView = pickerView
    }

    @IBAction func raceAction(_ sender: UITextField) {
        pb1 = true
        pb2 = false
        pickerView.delegate = self
        raceText.inputView = pickerView
    }
    
    
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true) {}
    }
    
    
    @IBAction func nextImageAction(_ sender: Any) {
    }
    
    
    @IBAction func previusImageAction(_ sender: Any) {
    }
    
    /* Point Distribution */
    /* STR */
    @IBAction func plusStrAction(_ sender: UIButton) {
        if(totalPoints > 0 && (strPointsI >= 0 && strPointsI < 28))
        {
            strPointsI = strPointsI + 1;
            totalPoints = totalPoints - 1;
            strPoints.text = String(strPointsI)
        }
    }
    
    @IBAction func minusStrAction(_ sender: UIButton) {
        if((totalPoints >= 0) && (strPointsI > 0 && strPointsI <= 28))
        {
            strPointsI = strPointsI - 1;
            totalPoints = totalPoints + 1;
            strPoints.text = String(strPointsI)
        }
    }
    /*******/
    /* CON */
    @IBAction func plusConAction(_ sender: Any) {
        if(totalPoints > 0 && (conPointsI >= 0 && conPointsI < 28))
        {
            conPointsI = conPointsI + 1;
            totalPoints = totalPoints - 1;
            conPoints.text = String(conPointsI)
        }
    }
    @IBAction func minusConAction(_ sender: Any) {
        if((totalPoints >= 0) && (conPointsI > 0 && conPointsI <= 28))
        {
            conPointsI = conPointsI - 1;
            totalPoints = totalPoints + 1;
            conPoints.text = String(conPointsI)
        }
    }
    /*******/
    /* DEX */
    @IBAction func plusDexAction(_ sender: Any) {
        if(totalPoints > 0 && (dexPointsI >= 0 && dexPointsI < 28))
        {
            dexPointsI = dexPointsI + 1;
            totalPoints = totalPoints - 1;
            dexPoints.text = String(dexPointsI)
        }
    }
    @IBAction func minusDexAction(_ sender: Any) {
        if((totalPoints >= 0) && (dexPointsI > 0 && dexPointsI <= 28))
        {
            dexPointsI = dexPointsI - 1;
            totalPoints = totalPoints + 1;
            dexPoints.text = String(dexPointsI)
        }
    }
    /*******/
    /* INT */
    @IBAction func plusIntAction(_ sender: Any) {
        if(totalPoints > 0 && (intPointsI >= 0 && intPointsI < 28))
        {
            intPointsI = intPointsI + 1;
            totalPoints = totalPoints - 1;
            intPoints.text = String(intPointsI)
        }
    }
    @IBAction func minusIntAction(_ sender: Any) {
        if((totalPoints >= 0) && (intPointsI > 0 && intPointsI <= 28))
        {
            intPointsI = intPointsI - 1;
            totalPoints = totalPoints + 1;
            intPoints.text = String(intPointsI)
        }
    }
    /*******/
    /* WIS */
    @IBAction func plusWisAction(_ sender: Any) {
        if(totalPoints > 0 && (wisPointsI >= 0 && wisPointsI < 28))
        {
            wisPointsI = wisPointsI + 1;
            totalPoints = totalPoints - 1;
            wisPoints.text = String(wisPointsI)
        }
    }
    @IBAction func minusWisAction(_ sender: Any) {
        if((totalPoints >= 0) && (wisPointsI > 0 && wisPointsI <= 28))
        {
            wisPointsI = wisPointsI - 1;
            totalPoints = totalPoints + 1;
            wisPoints.text = String(wisPointsI)
        }
    }
    /*******/
    /* CHA */
    @IBAction func plusCharAction(_ sender: Any) {
        if(totalPoints > 0 && (charPointsI >= 0 && charPointsI < 28))
        {
            charPointsI = charPointsI + 1;
            totalPoints = totalPoints - 1;
            charPoints.text = String(charPointsI)
        }
    }
    @IBAction func minusCharAction(_ sender: Any) {
        if((totalPoints >= 0) && (charPointsI > 0 && charPointsI <= 28))
        {
            charPointsI = charPointsI - 1;
            totalPoints = totalPoints + 1;
            charPoints.text = String(charPointsI)
        }
    }
    /*******/
}
