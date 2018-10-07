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
    private var expenses:[Expense]
    private init() {
        expenses = []
    }
    func expense(_ index:Int) -> Expense {
        return expenses[index]
    }
    func numExpense() -> Int {
        return expenses.count
    }
    func append(_ expense:Expense) {
        expenses.append(expense)
    }
    func minTotal() -> Double {
        var min = 0.0
        if expenses.count > 0 {
            min = expense(0).total
            if expenses.count == 1 {
                min = expense(0).total
            } else {
                for expense in expenses {
                    if min > expense.total {
                        min = expense.total
                    }
                }
            }
        }
        
        return Double(round(100 * min)/100)
        
    }
    
    func maxTotal() -> Double {
        var max = 0.0
        if expenses.count > 0 {
            if expenses.count == 1 {
                max = expense(0).total
            } else {
                for expense in expenses {
                    if max < expense.total {
                        max = expense.total
                    }
                }
            }
        }
        
        
        return Double(round(100 * max)/100)
    }
    
    func meanTotal() -> Double {
        var mean = 0.0
        if expenses.count > 0 {
            if expenses.count == 1 {
                mean = expense(0).total
            } else {
                for expense in expenses {
                    mean += expense.total
                }
            }
        }
        return Double(round(100 * mean)/100)
    }
    
    func variance() -> Double {
        var sum = 0.0
        var variance = 0.0
        if expenses.count == 0 {
            return 0.0
        } else {
            for expense in expenses {
                sum += pow((expense.total - meanTotal()), 2.0)
            }
            variance = sum/Double(expenses.count)
        }
        
        return Double(round(100 * variance)/100)
    }
}
