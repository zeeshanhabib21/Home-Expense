//
//  Budget.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import RealmSwift

class Budget: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String? = ""
    @objc dynamic var iconName: String? = ""
    
    let lists = List<ItemList>()
    
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    func getItemList() -> List<ItemList> {
        return lists
    }
    
}
