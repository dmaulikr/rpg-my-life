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


    @IBOutlet weak var nicknameText: UITextField!
    @IBOutlet weak var raceText: UITextField!
    let pickerView = UIPickerView()
    var pickOption:[String] = ["", "Barbarian", "Bard", "Druid", "Mage", "Paladin", "Rogue"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.delegate = self
        
        raceText.inputView = pickerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        raceText.text = pickOption[row]
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
    


    
    
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true) {}
    }
}
