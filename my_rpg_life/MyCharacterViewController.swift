//
//  MyCharacterViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 21/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class MyCharacterViewController: UIViewController {

    @IBOutlet weak var myCharacterTitle: UINavigationItem!

    @IBOutlet weak var nicknameLbl: UILabel!
    @IBOutlet weak var raceLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var strLbl: UILabel!
    @IBOutlet weak var conLbl: UILabel!
    @IBOutlet weak var dexLbl: UILabel!
    @IBOutlet weak var intLbl: UILabel!
    @IBOutlet weak var wisLbl: UILabel!
    @IBOutlet weak var chaLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nicknameLbl.text = MyPlayer.myPlayer.nickname;
        raceLbl.text = MyPlayer.myPlayer.race;
        classLbl.text = MyPlayer.myPlayer.classe;
        genderLbl.text = MyPlayer.myPlayer.gender;
        strLbl.text = String(MyPlayer.myPlayer.str);
        conLbl.text = String(MyPlayer.myPlayer.con);
        dexLbl.text = String(MyPlayer.myPlayer.dex);
        intLbl.text = String(MyPlayer.myPlayer.int);
        chaLbl.text = String(MyPlayer.myPlayer.char);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backClicked(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {}
    }
}
