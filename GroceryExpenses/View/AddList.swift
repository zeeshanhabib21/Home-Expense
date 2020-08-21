//
//  AddList.swift
//  GroceryExpenses
//
//  Created by Apple on 19/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class AddList: UIViewController{
    
    @IBOutlet weak var ListNameTextField: UITextField!
    let realm = try! Realm()

    @IBOutlet weak var addList: UIButton!
    @IBAction func AddList(_ sender: Any)
    {
        
    }
    
}
