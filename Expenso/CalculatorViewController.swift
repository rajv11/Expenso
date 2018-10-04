//
//  FirstViewController.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var amountTF: UITextField!
    @IBOutlet weak var tipTF: UITextField!
    @IBOutlet weak var totalLBL: UILabel!
    func display(title:String, msg:String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func transcribe(_ sender: Any) {
        var location:String
        if (locationTF.text?.isEmpty)!{
            location = "unkown"
        } else {
            location = locationTF.text!
        }
        if let amount = Double(amountTF.text!), let tip  = Double(tipTF.text!), amount >= 0, tip >= 0 {
            let bill:Expense = Expense(location: location,amount: amount, tip: tip)
            ExpenseRepository.expensRepo.expenses.append(bill)
            totalLBL.text = "$\(bill.total)"
        } else {
            self.display(title: "Invalid Input", msg: "Please Enter valid amount and tip")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

