//
//  ViewController.swift
//  TipCalculator
//
//  Created by Victoria Gray on 03/05/2016.
//  Copyright © 2016 Victoria Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var numberOfPeople: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmountPaid: UILabel!
    @IBOutlet weak var totalAmountPerPerson: UILabel!
    @IBAction func calculateTip(sender: AnyObject) {
        
        tip.billAmount = NSString(string: billAmount.text!).doubleValue
        tip.tipPercentage = NSString(string: tipPercentage.text!).doubleValue
        tip.numberOfPeople = NSString(string: numberOfPeople.text!).integerValue
        if (tip.numberOfPeople <= 0) {
            tip.numberOfPeople = 1
        }
        
        tip.CalculateTip()
        RefreshScreen()
        
    }
    
    let tip = CalculatorModel (billAmount: 100.0, tipPercentage: 10.0, numberOfPeople: 2)
    
    func RefreshScreen() {
        billAmount.text = String(format: "%.2f", tip.billAmount)
        tipPercentage.text = String(format: "%.2f", tip.tipPercentage)
        numberOfPeople.text = String(format: "%d", tip.numberOfPeople)
        
        tipAmount.text = String(format: "%.2f", tip.tipAmount)
        totalAmountPaid.text = String (format: "%.2f", tip.totalAmountPaid)
        totalAmountPerPerson.text = String (format: "%.2f", tip.totalAmountPerPerson)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        billAmount.becomeFirstResponder()
        RefreshScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

