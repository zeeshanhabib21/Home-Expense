//
//  DBInteractor.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import RealmSwift


class DBInteractor {
    
    static let shared = DBInteractor()
    let realm: Realm = try! Realm(configuration: .defaultConfiguration)
    
    func getBudgets() -> Results<Budget> {
        return realm.objects(Budget.self)
    }
    
    func getItemLists(forBudgetId id: Int) -> Results<ItemList> {
        let predicate = NSPredicate(format: "budgetID = %d", id)
        return realm.objects(ItemList.self).filter(predicate)
    }
    
    func addBudget(budget: Budget) {
        try! realm.write({
            realm.add(budget)
        })
    }
}
