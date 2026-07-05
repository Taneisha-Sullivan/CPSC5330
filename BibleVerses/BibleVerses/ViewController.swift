//
//  ViewController.swift
//  BibleVerses
//
//  Created by Taneisha Sullivan on 7/4/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    let verses = [
        
        VerseItem(category: "For Strength", reference: "Phillipians 4:13", scripture: "I can do all things through Christ who strengths me."),
        
        VerseItem(category: "For Guidance", reference: "Proverbs 3:5-6", scripture: "Trust in the LORD with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight."),
        
        VerseItem(category: "For Courage", reference: "Joshua 1:9", scripture: "Have I not commanded you? Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go"),
        
        VerseItem(category: "For Peace", reference: "Isaiah 26:3", scripture: "You will keep in perfect peace those whose minds are steadfast, because they trust in you."),
        
        VerseItem(category: "For Comfort", reference: "Psalm 34:18", scripture: "The LORD is close to the brokenhearted and saves those who are crushed in spirit."),
        
        VerseItem(category: "For Protection", reference: "Psalm 23:1-4", scripture: "The Lord is my shepherd, I lack nothing. He makes me lie down in green pastures, he leads me beside quiet waters, he refreshes my soul. He guides me along the right paths for his name’s sake. Even though I walk through the darkest valley, I will fear no evil, for you are with me; your rod and your staff, they comfort me."),
        
        VerseItem(category: "For Hope", reference: "Jeremiah 29:11", scripture: "For I know the plans I have for you,” declares the LORD, “plans to prosper you and not to harm you, plans to give you hope and a future."),
        
        VerseItem(category: "For Rest", reference: "Matthew 11:28", scripture: "Come to me, all you who are weary and burdened, and I will give you rest."),
        
        VerseItem(category: "For Reassurance", reference: "Romans 8:28", scripture: "And we know that in all things God works for the good of those who love him, who have been called according to his purpose"),
        
        VerseItem(category: "For Relief", reference: "1 Peter 5:7", scripture: "Cast all your anxiety on him because he cares for you.")
    ]
 

    @IBOutlet weak var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return verses.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VerseCell", for: indexPath)
        let item = verses[indexPath.row]
    cell.textLabel?.text = "\(item.category) - \(item.reference)"
    return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedVerse = verses[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: selectedVerse)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let detailVC = segue.destination as! DetailViewController
            detailVC.verse = sender as? VerseItem
            //print("SENDER:", sender)
        }
    
        }
        
}

