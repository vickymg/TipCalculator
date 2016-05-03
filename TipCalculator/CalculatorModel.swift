//
//  CalculatorModel.swift
//  TipCalculator
//
//  Created by Victoria Gray on 03/05/2016.
//  Copyright © 2016 Victoria Gray. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    var billAmount: Double
    var tipPercentage: Double
    var numberOfPeople: Int
    
    var tipAmount: Double = 0
    var totalAmountPaid: Double = 0
    var totalAmountPerPerson: Double = 0
    
    init (billAmount: Double, tipPercentage: Double, numberOfPeople: Int) {
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
        self.numberOfPeople = numberOfPeople
        
        CalculateTip()
        
    }
    
    func CalculateTip() {
        tipAmount = (tipPercentage / 100) * billAmount
        totalAmountPaid = billAmount + tipAmount
        totalAmountPerPerson = totalAmountPaid / Double(numberOfPeople)
    }
}