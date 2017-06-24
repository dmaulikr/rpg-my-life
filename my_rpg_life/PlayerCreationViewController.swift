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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pb1 = false
        pb2 = false


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
        let player = Player();
        player.email = "caiocozza.art@gmail.com";
        player.firstName = "Caio";
        player.surName = "Cozza";
        player.nickname = "ArchMage";
        player.password = "4321";
        
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
}
