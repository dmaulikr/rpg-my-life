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

    override func viewDidLoad() {
        super.viewDidLoad()
        myCharacterTitle.title = MyPlayer.myPlayer.nickname;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backClicked(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {}
    }
}
