//
//  Expense.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
struct Expense {
    let location:String
    let amount:Double
    let tip:Double
    
    
    var total:Double {
        let totalAmt = amount + (amount * (tip / 100))
        return Double(round(100 * totalAmt)/100)
    }
    
}
