//
//  BudgetViewModel.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

struct BudgetStruct {
    let id, listCount: Int
    let name, image: String
    
    init(_ model: Budget) {
        self.id = model.id
        self.name = model.name ?? ""
        self.image = model.iconName ?? ""
        self.listCount = model.getItemList().count
    }
}

protocol BudgetViewModelFetchProtocol {
    func itemsFetched(budgets: [BudgetStruct])
    func itemsFetchFailed()
}

protocol BudgetViewModelProtocol: BudgetModelFetchProtocol {
    var model: BudgetModelProtocol {get}
    var delegate: BudgetViewModelFetchProtocol? {get set}
    var budgets: [BudgetStruct] {get set}
    
    func getBudgets()
    func fetchBudgets()
}

class BudgetViewModel: BudgetViewModelProtocol {
    internal var model: BudgetModelProtocol = BudgetRealmModel()
    var delegate: BudgetViewModelFetchProtocol? = nil
    
    internal var budgets: [BudgetStruct] = []
    
    init() {
        self.model.delegate = self
        self.fetchBudgets()
    }
    
    func getBudgets() {
        self.delegate?.itemsFetched(budgets: self.budgets)
    }
    
    internal func fetchBudgets() {
        model.getBudgets()
    }
    
}

extension BudgetViewModel {
    func itemsFetched(budgets: [Budget]) {
        self.budgets = budgets.map({ BudgetStruct($0) })
    }
    func itemsFetchFailed() {
        print("Items fetching is failed")
        self.delegate?.itemsFetchFailed()
    }
}


