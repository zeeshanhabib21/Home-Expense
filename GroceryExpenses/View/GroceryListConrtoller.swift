//
//  GroceryListConrtoller.swift
//  GroceryExpenses
//
//  Created by Apple on 19/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit

class GroceryListConrtoller: UIViewController {
 
    @IBOutlet weak var listTable: UITableView!
    var selectedCategory: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTable.separatorStyle = .none
        
    }
    
    @IBAction func didPressAddButton(){
            performSegue(withIdentifier: "addList", sender: self)
    }
}

extension GroceryListConrtoller: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! GroceryListTableViewCell
        cell.ListLable.text = selectedCategory
        return cell
        
    }
    
    
}

