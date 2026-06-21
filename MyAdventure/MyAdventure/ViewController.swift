//
//  ViewController.swift
//  MyAdventure
//
//  Created by Taneisha Sullivan on 6/21/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerSubmitted(_ sender: UIButton) {
        
        let userChoice = sender.titleLabel!.text!
        
        adventureLogic.nextStory(choice: userChoice)
        
        updateUI()
        
        
    }
    func updateUI() {
        
        questionLabel.text = adventureLogic.getStory()
        buttonOne.setTitle(adventureLogic.getChoice1(), for: .normal)
        buttonTwo.setTitle(adventureLogic.getChoice2(), for: .normal)
        
        
    }
}

