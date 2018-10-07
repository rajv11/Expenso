//
//  StatisticaViewController.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {
    @IBOutlet weak var minTotalLBL: UILabel!
    @IBOutlet weak var maxTotalLBL: UILabel!
    @IBOutlet weak var meanTotalLBL: UILabel!
    @IBOutlet weak var varianceTotalLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.loadView()
        let expenses = ExpenseRepository.expensRepo
        minTotalLBL.text = "$\(expenses.minTotal())"
        maxTotalLBL.text = "$\(expenses.maxTotal())"
        meanTotalLBL.text = "$\(expenses.meanTotal())"
        varianceTotalLBL.text = "$\(expenses.variance())"
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
