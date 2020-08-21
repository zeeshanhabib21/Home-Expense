//
//  Item.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import RealmSwift


class Item: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String? = ""
    @objc dynamic var price: Double = 0
    @objc dynamic var quantity: Int = 0
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
