//
//  ViewController.swift
//  GroceryExpenses
//
//  Created by Apple on 16/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    let ModuleList = ["Expenses"]
    let ModuleImageName = [
        UIImage(named: "grocery")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}


extension  ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ModuleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moduleList", for: indexPath) as! TableViewCell
        cell.ModuleImage.image = ModuleImageName[indexPath.row]
        cell.ModuleLable.text = ModuleList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subMenuVC = GroceryListConrtoller()
        self.navigationController?.pushViewController(subMenuVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

