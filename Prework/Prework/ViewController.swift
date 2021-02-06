//
//  ViewController.swift
//  Prework
//
//  Created by CSUDH on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    //text field
    @IBOutlet weak var billAmountTextField: UITextField!
    //Tip: $0.00
    @IBOutlet weak var tipAmountLabel: UILabel!
    //15%, 18%, 20%
    @IBOutlet weak var tipControl: UISegmentedControl!
    //Total: $0.00
    @IBOutlet weak var totalLabel: UILabel!
    
    //immutable text objexts
    
    @IBOutlet weak var billAmountTextLabel: UILabel!
    @IBOutlet weak var tipTextLabel: UILabel!
    
    @IBOutlet weak var totalTextLabel: UILabel!
    
    @IBOutlet weak var dollarLabel: UILabel!
    
    @IBOutlet weak var darkModeTextLabel: UILabel!
    
    //dark mode ()_
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * percentage
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func darkModeController(_ sender: Any) {
        
        if darkModeSwitch.isOn
        {
            //entire screen
            self.view.backgroundColor = .black;
            
            //text
            self.billAmountTextField.textColor = .white
            self.billAmountTextField.backgroundColor = .darkGray
            self.tipAmountLabel.textColor = .white
            self.totalLabel.textColor = .white
            self.billAmountTextLabel.textColor = .white
            self.tipTextLabel.textColor = .white
            self.totalTextLabel.textColor = .white
            self.dollarLabel.textColor = .white
            self.darkModeTextLabel.textColor = .white
            
            //The Control Bar
            self.tipControl.backgroundColor = .lightGray
            self.tipControl.selectedSegmentTintColor = .white
            //self.tipControl.tintColor = .lightGray
            
        }
        else
        {
            //entire screen
            self.view.backgroundColor = .white
            
            //text
            self.billAmountTextField.textColor = .black
            self.billAmountTextField.backgroundColor = .white
            self.tipAmountLabel.textColor = .black
            self.totalLabel.textColor = .black
            self.totalLabel.textColor = .black
            self.billAmountTextLabel.textColor = .black
            self.tipTextLabel.textColor = .black
            self.totalTextLabel.textColor = .black
            self.dollarLabel.textColor = .black
            self.darkModeTextLabel.textColor = .black
            
            //The Control Bar
            self.tipControl.backgroundColor = .lightGray
            self.tipControl.selectedSegmentTintColor = .white
            //self.tipControl.tintColor = .lightGray
            
            
        }
    }
    
}

