//
//  BudgetModel.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import RealmSwift

protocol BudgetModelFetchProtocol {
    func itemsFetched(budgets: [Budget])
    func itemsFetchFailed()
}

protocol BudgetModelProtocol {
    var budgets: [Budget] {get set}
    var delegate: BudgetModelFetchProtocol? {get set}
    
    func getBudgets()
    func fetchBudgets()
}


class BudgetRealmModel: BudgetModelProtocol {
    
    internal var budgets: [Budget] = []
    var delegate: BudgetModelFetchProtocol? = nil
    
    init() {
        fetchBudgets()
        setUpFirstRun()
    }
    
    func getBudgets() {
        self.delegate?.itemsFetched(budgets: budgets)
    }
    
    internal func fetchBudgets() {
        self.budgets = Array(DBInteractor.shared.getBudgets())
    }
    
    
    private func setUpFirstRun() {
        if userDefaults.isFirstRun {
            let budget = Budget()
            budget.id = 1
            budget.name = "Expenses"
            budget.iconName = "grocery"
            DBInteractor.shared.addBudget(budget: budget)
            userDefaults.isFirstRun = false
            self.getBudgets()
        }
    }
    
}
