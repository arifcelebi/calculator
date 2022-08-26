//
//  ViewController.swift
//  calculator
//
//  Created by Arif Celebi on 26.08.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var calculateWorkings: UILabel!
    
    @IBOutlet weak var calculateResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearAll()
   
    }

    func clearAll(){
        
        workings = ""
        calculateWorkings.text = ""
        calculateResults.text = ""
        
    }
    
    func addtoWorkings(value:String){
        
        workings = workings + value
        calculateWorkings.text = workings
    }
    @IBAction func allClearTap(_ sender: Any) {
        
        clearAll()
       
    }
    @IBAction func backTap(_ sender: Any) {
        
        if(!workings.isEmpty){
            
            workings.removeLast()
            calculateWorkings.text
        }
        
    }
    
    @IBAction func percentTap(_ sender: Any) {
        
        addtoWorkings(value: "%")
        
    }
    @IBAction func divideTap(_ sender: Any) {
        
        addtoWorkings(value: "/")
        
    }

    @IBAction func minusTap(_ sender: Any) {
        
        addtoWorkings(value: "-")
    }
    
    @IBAction func timesTap(_ sender: Any) {
        addtoWorkings(value: "*")
        
    }
    @IBAction func equalsTap(_ sender: Any) {
        
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculateResults.text = resultString
        
    }
    
    func formatResult(result:Double) -> String {
        
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            
            return String (format: "%0.f", result)
        }else{
           
            return String (format: "%2.f", result)

            
        }
            
    }
    @IBAction func plusTap(_ sender: Any) {
        addtoWorkings(value: "+")
    }
    @IBAction func decimalTap(_ sender: Any) {
        addtoWorkings(value: ".")
        
    }
    @IBAction func zeroTap(_ sender: Any) {
        addtoWorkings(value: "0")
    }
    @IBAction func oneTap(_ sender: Any) {
        addtoWorkings(value: "1")
    }
    @IBAction func twoTap(_ sender: Any) {
        addtoWorkings(value: "2")
    }
    @IBAction func threeTap(_ sender: Any) {
        addtoWorkings(value: "3")
    }
    @IBAction func fourTap(_ sender: Any) {
        addtoWorkings(value: "4")
    }
    @IBAction func fiveTap(_ sender: Any) {
        addtoWorkings(value: "5")
    }
    @IBAction func sixTap(_ sender: Any) {
        addtoWorkings(value: "6")
    }
   
    @IBAction func sevenTap(_ sender: Any) {
        addtoWorkings(value: "7")
    }
    @IBAction func eightTap(_ sender: Any) {
        addtoWorkings(value: "8")
    }
    @IBAction func nineTap(_ sender: Any) {
        addtoWorkings(value: "9")
    }
}

