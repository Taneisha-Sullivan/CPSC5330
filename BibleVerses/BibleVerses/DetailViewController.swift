//
//  DetailViewController.swift
//  BibleVerses
//
//  Created by Taneisha Sullivan on 7/4/26.
//
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var referenceLabel: UILabel!
    @IBOutlet weak var scriptureTextView: UITextView!
    
    var verse: VerseItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("VERSE DETAIL:", verse)
        
        categoryLabel.text = verse?.category
        referenceLabel.text = verse?.reference
        scriptureTextView.text = verse?.scripture
    }
}
