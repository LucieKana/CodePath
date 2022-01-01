//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by lucie Gayelle Assonfack Kana on 1/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var tipPercentTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    
    @IBOutlet weak var tipAmountlbl: UILabel!
    @IBOutlet weak var billTotalLbl: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        let billAmount:Double = Double(billAmountTxt.text!)!
        
        let tipAmount:Double = (Double(tipPercentTxt.text!)! / 100) * billAmount
        tipAmountlbl.text = String(format: "$%.02f" , tipAmount)
        billTotalLbl.text = String(format: "$%.02f", billAmount + tipAmount)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

