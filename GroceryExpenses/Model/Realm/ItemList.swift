//
//  File.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import RealmSwift

class ItemList: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String? = ""
    @objc dynamic var budgetID: Int = 0
    let items = List<Item>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
