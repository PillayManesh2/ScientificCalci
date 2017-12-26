//
//  ViewController.swift
//  CalculatorUsingSwift
//
//  Created by Student 01 on 12/07/17.
//  Copyright © 2017 felix. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var ansLabel: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet var EquationLabel: UILabel!

    
    @IBOutlet var allClearButton: UIButton!

    
    //one.addTarget(self, action: #selector(getter:UIDynamicBehavior.manesh)
    


    @IBAction func allClearAction(_ sender: Any) {
        EquationLabel.text="";
    }
    @IBAction func clearAction(_ sender: Any) {
        var str=EquationLabel.text! as String;
        if str.isEmpty || str.characters.count==0
        {
            EquationLabel.text="0"
        }
        else
        {
            str = str.substring(to: str.index(before: str.endIndex))
            EquationLabel.text=str

        }
        
    }
    @IBOutlet var clearButton: UIButton!
    @IBAction func closeCalci(_ sender: Any) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let square = "5**2"
        let arithmeticExpression = NSExpression(format: square)
        let sum = arithmeticExpression.expressionValue(with: nil, context: nil) as! Int
        print(sum)
        
        let addition = "5+2"
        let arithmeticExpression1 = NSExpression(format: addition)
        let add = arithmeticExpression1.expressionValue(with: nil, context: nil) as! Int
        print(add)
        
        let subtract = "5-2"
        let arithmeticExpression2 = NSExpression(format: subtract)
        let sub = arithmeticExpression2.expressionValue(with: nil, context: nil) as! Int
        print(sub)
        
        let division = "5/2"
        let arithmeticExpression3 = NSExpression(format: division)
        let div = arithmeticExpression3.expressionValue(with: nil, context: nil) as! Float
        print(div)
 
        let mult = "5*2"
        let arithmeticExpression4 = NSExpression(format: mult)
        let mul = arithmeticExpression4.expressionValue(with: nil, context: nil) as! Int
        print(mul)
        
        let oneuponx = "1/2"
        let arithmeticExpression5 = NSExpression(format: oneuponx)
        let x = arithmeticExpression5.expressionValue(with: nil, context: nil) as! Double
        print(x)
        
        let theCosOfZero: Double = cos(0)
        print("cos of 0 is \(theCosOfZero)")
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func manesh(_ sender: UIButton)
    {

        switch sender {
        case one:
            EquationLabel.text=EquationLabel.text!+(one.titleLabel?.text)!
            
        case two:
            // or Spanish
            EquationLabel.text=EquationLabel.text!+(two.titleLabel?.text)!
        case three:
            // or English
            EquationLabel.text=EquationLabel.text!+(three.titleLabel?.text)!
        case four:
            EquationLabel.text=EquationLabel.text!+(four.titleLabel?.text)!
            
        case five:
            // or Spanish
            EquationLabel.text=EquationLabel.text!+(five.titleLabel?.text)!
        case six:
            // or English
            EquationLabel.text=EquationLabel.text!+(six.titleLabel?.text)!
        case seven:
            EquationLabel.text=EquationLabel.text!+(seven.titleLabel?.text)!
            
        case eight:
            // or Spanish
            EquationLabel.text=EquationLabel.text!+(eight.titleLabel?.text)!
        case nine:
            // or English
            EquationLabel.text=EquationLabel.text!+(nine.titleLabel?.text)!
        case dot:
            EquationLabel.text=EquationLabel.text!+(dot.titleLabel?.text)!
            
        case equal:
            // or Spanish
            ansLabel.text=EquationLabel.text!
        case plus:
            // or English
            EquationLabel.text=EquationLabel.text!+(plus.titleLabel?.text)!
            
        default:
            break
            
        }
    }
 


}

