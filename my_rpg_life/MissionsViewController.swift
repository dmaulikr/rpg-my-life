//
//  MissionsViewController.swift
//  my_rpg_life
//
//  Created by Caio Cozza on 23/06/17.
//  Copyright © 2017 Cora Technology. All rights reserved.
//

import UIKit

class myCellCustomClass: UITableViewCell
{
    @IBOutlet weak var tLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    
}

class MissionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    var items:[String] = []
    var items2:[String] = []
    var cellReuseIdentifier = "textCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        self.addMissionToList();
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addMissionToList()
    {
        //MyPlayer.myPlayer._quests;
        for __quest in MyPlayer.myPlayer._quests {
            items.append(__quest._title);
            items2.append(__quest._details);
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! myCellCustomClass
        //cell.textLabel?.text = self.items[indexPath.row]
        //cell.detailTextLabel?.text = self.items2[indexPath.row]
        cell.tLabel?.text = self.items[indexPath.row]
        cell.dLabel?.text = self.items2[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell \(indexPath.row).")
    }
    
    @IBAction func backClicked(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true) {}
    }
    
}
