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
    
    let viewModel = BudgetViewModel()
    var dataSource: [BudgetStruct] = [] {
        didSet { self.tableview.reloadData() }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getBudgets()
    }


}

extension ViewController: BudgetViewModelFetchProtocol {
    func itemsFetchFailed() {
        
    }
    
    func itemsFetched(budgets: [BudgetStruct]) {
        self.dataSource = budgets
    }
}


extension  ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moduleList", for: indexPath) as! TableViewCell
        
        let budget = self.dataSource[indexPath.row]
        cell.ModuleLable.text = budget.name
        cell.ModuleImage.image = UIImage(named: budget.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("sd")
        performSegue(withIdentifier: "gotoList", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! GroceryListConrtoller
        if tableview.indexPathForSelectedRow != nil {
            destinationVC.selectedCategory = "sads"
        }
    }
    
    
}

