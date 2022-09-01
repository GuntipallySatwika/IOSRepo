//
//  ViewController.swift
//  SimplaCalculator
//
//  Created by Guntipally,Satwika Reddy on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    var operand1: Double = -1.1
    var operand2: Double = -1.1
    var calcoperator: Character = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button8Clicked(_ sender: UIButton) {
        displayLabel.text=displayLabel.text!+"8"
        if(operand1 == -1.1){
            operand1 = 8
        }
        else{
            operand2 = 8
        }
    }
  
    @IBAction func Button9Clicked(_ sender: UIButton) {
        displayLabel.text=displayLabel.text!+"9"
        if(operand2 == -1.1){
            operand2 = 9
        }
        else{
            operand1 = 9
        }
    }
    
    @IBAction func ButtonClicked(_ sender: UIButton) {
        displayLabel.text=displayLabel.text!+"+"
        //As the user click the + symbol we need to assign the calcoperator to +
        if(calcoperator == " "){
            calcoperator = "+"
        }
            
    }
    
    @IBAction func ButtonEquals(_ sender: UIButton) {
        displayLabel.text=displayLabel.text!+"="
        if(calcoperator == "+"){
        displayLabel.text=displayLabel.text!+"\(operand1+operand2)"
    }
    
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        displayLabel.text=" "
        operand1 = -1.1
        operand2 = -1.1
        calcoperator = " "
    }
}

