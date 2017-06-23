//
//  PlayerCreationViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 20/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class PlayerCreationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let player = Player();
        player.email = "caiocozza.art@gmail.com";
        player.firstName = "Caio";
        player.surName = "Cozza";
        player.nickname = "ArchMage";
        player.password = "4321";
        
        MyPlayer.myPlayer = player;
        
        /*if let mainViewController = segue.destination as? MainViewController {
            mainViewController.player = player
        }*/
    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true) {}
    }
}
