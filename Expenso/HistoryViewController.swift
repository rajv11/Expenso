//
//  SecondViewController.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var expense:[Expense] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewDidLoad()
        self.loadView()
        expense = ExpenseRepository.expensRepo.expenses
        
        
    }
    
    let rowHeight = 60.0
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(rowHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expense.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "expenseCell")!
        let locationLBL = cell.viewWithTag(100) as! UILabel
        let amountLBL = cell.viewWithTag(200) as! UILabel
        let tipLBL = cell.viewWithTag(300) as! UILabel
        let totalLBL = cell.viewWithTag(400) as! UILabel
        
        locationLBL.text = expense[indexPath.row].location
        amountLBL.text = "$\(expense[indexPath.row].amount),"
        tipLBL.text = "\(expense[indexPath.row].tip)%,"
        totalLBL.text = "$\(expense[indexPath.row].total)"
        return cell
    }
}

