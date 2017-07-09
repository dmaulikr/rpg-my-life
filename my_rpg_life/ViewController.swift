//
//  ViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 20/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    var __myPlayer:PlayerData?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginClicked() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        __myPlayer = appDelegate.getPlayer();
        if(__myPlayer?.email != "" && __myPlayer?.password != "")
        {
            //means we have a true player
        }
    }
    
    
    @IBAction func registerClicked() {
    }


}

