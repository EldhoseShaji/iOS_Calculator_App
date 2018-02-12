//
//  ViewController.swift
//  Calculator
//
//  Created by Eldhose Shaji on 2018-02-01.
//  Copyright © 2018 Eldhose Shaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let PLUS = 0
    let MINUS = 1
    let MULTIPLY = 2
    let DIVIDE = 3
    
    var operand : NSInteger = 0
    var num1 : NSInteger = 0
    var num2 : NSInteger = 0
    var answer : Double = 0
    
    var theNumber : String = "0"
    @IBOutlet var lblText : UILabel!
    
    func printNumber()
    {
        lblText.text = theNumber
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        operand = PLUS
        printNumber()
        
    }
    
    @IBAction func clearNum(sender : Any)
    {
        theNumber = "0"
        printNumber()
    }
    
    @IBAction func calculate(sender : Any)
    {
        num2 = Int(theNumber)!
        
        if operand == PLUS
        {
            answer = Double(num1 + num2)
        }
        if operand == MINUS
        {
            answer = Double(num1 - num2)
        }
        if operand == MULTIPLY
        {
            answer = Double(num1 * num2)
        }
        if operand == DIVIDE
        {
            if num2 == 0
            {
                let alert = UIAlertController(title: "Error", message: "Cannot divide by Zero", preferredStyle: .alert)
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                
                alert.addAction(cancelAction)
                
                present(alert,animated: true)
            }
            answer = Double(num1) / Double(num2)
        }
        
        theNumber = String(answer)
        
        printNumber()
        
        num1 = 0
        num2 = 0
        answer = 0.0
        operand = PLUS
        
    }
    
    //@IBAction func pressNum(sender : UIButton)
    //{
      //  let number = sender.tag
        
        //if (number >= 0) && (number <= 9)
        //{
        //    theNumber = theNumber + String(number)
        //    printNumber()
            
       // }
   // }
    
    @IBAction func press1(sender : Any)
    {
        theNumber = theNumber + "1"
        printNumber()
    }
    @IBAction func press2(sender : Any)
    {
        theNumber = theNumber + "2"
        printNumber()
    }
    @IBAction func press3(sender : Any)
    {
        theNumber = theNumber + "3"
        printNumber()
    }
    @IBAction func press4(sender : Any)
    {
        theNumber = theNumber + "4"
        printNumber()
    }
    @IBAction func press5(sender : Any)
    {
        theNumber = theNumber + "5"
        printNumber()
    }
    @IBAction func press6(sender : Any)
    {
        theNumber = theNumber + "6"
        printNumber()
    }
    @IBAction func press7(sender : Any)
    {
        theNumber = theNumber + "7"
        printNumber()
    }
    @IBAction func press8(sender : Any)
    {
        theNumber = theNumber + "8"
        printNumber()
    }
    @IBAction func press9(sender : Any)
    {
        theNumber = theNumber + "9"
        printNumber()
    }
    @IBAction func press0(sender : Any)
    {
        theNumber = theNumber + "0"
        printNumber()
    }
    
    func saveNum1()
    {
        num1 = Int(theNumber)!
        theNumber = "0"
        printNumber()
    }
    
    @IBAction func setPlus(sender : Any)
    {
        operand = PLUS
        saveNum1()
    }
    @IBAction func setMinus(sender : Any)
    {
        operand = MINUS
        saveNum1()
    }
    @IBAction func setMultiply(sender : Any)
    {
        operand = MULTIPLY
        saveNum1()
    }
    @IBAction func setDivide(sender : Any)
    {
        operand = DIVIDE
        saveNum1()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

