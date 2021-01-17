//
//  ViewController.swift
//  Prework
//
//  Created by Nabi Buttar on 1/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var EachPersonLabel: UILabel!
    @IBOutlet weak var TipPercentageLabel: UILabel!
    @IBOutlet weak var TipPercentageSlider: UISlider!
    @IBOutlet weak var PeopleAmountSlider: UISlider!
    @IBOutlet weak var Split: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func TipSliderValueChange( sender: Any) {
        TipPercentageLabel.text = String(format: "Tip: %02d%%", Int(TipPercentageSlider.value))
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        let TipPercent = TipPercentageSlider.value
        let tip = bill * Double(TipPercent) / 100
        let total = bill + tip
        //update Tip Amount Label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        // update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)

    }
    
    @IBAction func AmountOfPeopleChange( sender: Any){
        Split.text = "Split: \(Int(PeopleAmountSlider.value))"
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        // Get Total tip by multiplting tip * tipPercentage
        let TipPercent = TipPercentageSlider.value
        let tip = bill * Double(TipPercent) / 100
        let total = bill + tip
        let numberOfPeople = Int(PeopleAmountSlider.value)
        let seperateBill = (round(total) / Double(numberOfPeople) * 100 / 100)
        EachPersonLabel.text = String(format: "$%.2f", seperateBill)
        //update Tip Amount Label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        // update Total Amount
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}


