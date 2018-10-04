//
//  ExpenseRepository.swift
//  Expenso
//
//  Created by student on 10/3/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class ExpenseRepository {
    static let expensRepo = ExpenseRepository()
    var expenses:[Expense]
    init() {
        expenses = []
    }
    func expense(_ index:Int) -> Expense {
        return expenses[index]
    }
    func numExpense() -> Int {
        return expenses.count
    }
    
}
