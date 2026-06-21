//
//AdventureLogic.swift
//  MyAdventure
//
//  Created by Taneisha Sullivan on 6/20/26.
//

struct AdventureLogic {
    var storyIndex = 0
    
    let stories = [
        
        Adventure(story: "You wake up to be productive today. What's your first move?", choice1: "Start your to-do list 🗒️", choice2: "Check your phone really quick 📱", choice1Destination: 1, choice2Destination: 2),
        
        Adventure(story: "You opened your planner and start organizing... but get distracted...", choice1: "Focus and finish", choice2: "Docorate your planner", choice1Destination: 3, choice2Destination: 4),
        
        Adventure(story: "You open TikTok... just for a minute", choice1: "Put the phone down", choice2: "Keep scrolling", choice1Destination: 5, choice2Destination: 6),
        
        Adventure(story: "You stayed focused and finished everything! Boss level productivity 💪!", choice1: "Restart", choice2: "", choice1Destination: 0, choice2Destination: 0),
        
        Adventure(story: "You spent hours decorating instead of getting stuff done 😩", choice1: "Restart", choice2: "", choice1Destination: 0, choice2Destination: 0),
        
        Adventure(story: "You put your phone down and got stuff done", choice1: "Restart", choice2: "", choice1Destination: 0, choice2Destination: 0),
        
        Adventure(story: "It's night and you did NOHING all day! TikTok algorithm strikes again 😭!", choice1: "Restart", choice2: "", choice1Destination: 0, choice2Destination: 0)
    ]
    mutating func nextStory(choice: String) {
        if choice == stories[storyIndex].choice1 {
            storyIndex = stories[storyIndex].choice1Destination
        } else {
            storyIndex = stories[storyIndex].choice2Destination
        }
    }
    func getStory() -> String {
        return stories [storyIndex].story
    }
    
    func getChoice1() -> String {
        return stories[storyIndex].choice1
    }
    
    func getChoice2() -> String {
        return stories [storyIndex].choice2
    }
}
