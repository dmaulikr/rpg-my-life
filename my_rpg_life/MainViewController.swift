//
//  MainViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 20/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var titleNameTxt: UINavigationItem!
    //var player = Player();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNameTxt.title = MyPlayer.myPlayer.nickname;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let myCharacterViewController = segue.destination as? MyCharacterViewController {
            
        }
    }*/
}
