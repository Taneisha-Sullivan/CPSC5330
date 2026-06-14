//
//  ViewController.swift
//  MoodTracker
//
//  Created by Taneisha Sullivan on 6/14/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moodLabel: UILabel!
    
    @IBOutlet weak var moodSlider: UISlider!
    
    @IBOutlet weak var entryDate: UIDatePicker!
    
    @IBOutlet weak var entryLabel: UILabel!
    
    var currentMood = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        moodLabel.text = "Feeling: Neutral 😐"
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let mood = Int(sender.value)
        
        if mood <= 20 {
            currentMood = "😢"
            moodLabel.text = "Feeling: Very Sad 😢"
        } else if mood <= 40 {
            currentMood = "🙁"
            moodLabel.text = "Feeling: Sad 🙁"
        } else if mood <= 60 {
            currentMood = "😐"
            moodLabel.text = "Feeling: Neutral 😐"
        } else if mood <= 80 {
            currentMood = "🙂"
            moodLabel.text = "Feeling: Happy 🙂"
        } else {
            currentMood = "😄"
            moodLabel.text = "Feeling: Very Happy 😄"
        }
    }
    
    @IBAction func saveMood(_ sender: UIButton) {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        
        let currentDate = formatter.string(from: entryDate.date)
        
        entryLabel.text = "On \(currentDate), you felt \(currentMood)"
        
        
    }
    
}

