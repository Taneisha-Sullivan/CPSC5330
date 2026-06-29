//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Taneisha Sullivan on 6/27/26.
//
import Foundation

struct CurrencyLogic {
    var selectedCurrency: [String: Bool] = [
        "CAD": true,
        "MXN": true,
        "EUR": true,
        "GBP": true
    ]
    
    let rates: [String: Double] = [
        "CAD": 1.42, //Canadian dollar
        "MXN": 17.51, //Peso
        "EUR": 0.88, //Euro
        "GBP": 0.76 //Pound
    ]
    
    mutating func setCurrency(_ tag: Int, isOn: Bool) {
        let keys = ["CAD", "MXN", "EUR", "GBP"]
        selectedCurrency[keys[tag]] = isOn
        
        print("setCurrency called - tag:", tag, "isOn", isOn)
        print("selectedCurrency now:", selectedCurrency)
    }
    
    func convert(usd: Int) -> [String: Double] {
        var results: [String: Double] = [:]
        
        for (currency, isSelected) in selectedCurrency {
            if isSelected {
                results[currency] = Double(usd) * rates[currency]!
            }
        }
        
        return results
    }
}
