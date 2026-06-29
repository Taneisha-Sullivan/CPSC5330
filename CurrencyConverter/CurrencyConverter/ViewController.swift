//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Taneisha Sullivan on 6/28/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var cadSwitch: UISwitch!
    
    @IBOutlet weak var mxnSwitch: UISwitch!
    
    @IBOutlet weak var eurSwitch: UISwitch!
    
    @IBOutlet weak var gbpSwitch: UISwitch!
    
    var currencyLogic = CurrencyLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        currencyLogic.setCurrency(sender.tag, isOn: sender.isOn)
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        guard let usd = Int(usdTextField.text ?? "")
        else {
            errorLabel.text = "Please enter a whole number."
            errorLabel.isHidden = false
            return
        }
        
        errorLabel.isHidden = true
        
        performSegue(withIdentifier: "toResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults" {
            let resultsVC = segue.destination as! ResultsViewController
            
            let usdAmount = Int(usdTextField.text!)!
            
            resultsVC.usdAmount = usdAmount
            resultsVC.selectedCurrency = currencyLogic.selectedCurrency
            
            resultsVC.convertedValues = currencyLogic.convert(usd: usdAmount)
        }
    }
    
}

