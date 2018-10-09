//
//  SecondViewController.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var repo = ExpenseRepository.expensRepo
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.loadView()
//        repo = ExpenseRepository.expensRepo
        //tableView.reloadData()
        
    }
    
    let rowHeight = 45.0
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(rowHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repo.numExpense()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "expenseCell")!
        let locationLBL = cell.viewWithTag(100) as! UILabel
        let amountLBL = cell.viewWithTag(200) as! UILabel
        let tipLBL = cell.viewWithTag(300) as! UILabel
        let totalLBL = cell.viewWithTag(400) as! UILabel
        
        locationLBL.text = repo.expense(indexPath.row).location
        amountLBL.text = "$\(repo.expense(indexPath.row).amount),"
        tipLBL.text = "\(repo.expense(indexPath.row).tip)%,"
        totalLBL.text = "$\(repo.expense(indexPath.row).total)"
        return cell
    }
}

