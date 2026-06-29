//
//  ResultsViewController.swift
//  CurrencyConverter
//
//  Created by Taneisha Sullivan on 6/27/26.
//
import UIKit

class ResultsViewController: UIViewController {
    
    var usdAmount: Int = 0
    var selectedCurrency: [String: Bool] = [:]
    var convertedValues: [String: Double] = [:]
    
    @IBOutlet weak var usdAmountLabel: UILabel!
    
    @IBOutlet weak var cadAmountLabel: UILabel!
    
    @IBOutlet weak var mxnAmountLabel: UILabel!
    
    @IBOutlet weak var eurAmountLabel: UILabel!
    
    @IBOutlet weak var gbpAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = "\(usdAmount)"
        
        if selectedCurrency["CAD"] == true {
            cadAmountLabel.text = String(format: "%.2f", convertedValues["CAD"]!)
        } else {
            cadAmountLabel.text = ""
        }
        
        if selectedCurrency["MXN"] == true {
            mxnAmountLabel.text = String(format: "%.2f", convertedValues["MXN"]!)
        } else {
            mxnAmountLabel.text = ""
        }
        
        if selectedCurrency["EUR"] == true {
            eurAmountLabel.text = String(format: "%.2f", convertedValues["EUR"]!)
        } else {
            eurAmountLabel.text = ""
        }
        
        if selectedCurrency["GBP"] == true {
            gbpAmountLabel.text = String(format: "%.2f", convertedValues["GBP"]!)
        } else {
            gbpAmountLabel.text = ""
        }
    }
}
