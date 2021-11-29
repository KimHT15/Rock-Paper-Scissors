//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Kimberly Herrera on 11/11/21.
//

import UIKit

class ViewController: UIViewController
{
//Declare variables and outlets
    @IBOutlet weak var computerChoice: UILabel!
    
    @IBOutlet weak var yourChoice: UILabel!
   
    @IBOutlet weak var winner: UILabel!
  
    var computerChoiceArray = [ "Rock" , "Paper" , "Scissors" ]

    var yourChoiceNumber = Int.random(in:0..<3)

    
    let choices = ["rock" , "paper" , "scissors"]
    override func viewDidLoad()
    {
     super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Choice function
    @IBAction func rock(_ sender: Any)
    {
       var your = "Rock"
//        let randomNumber = Int.random(in: 0...2)
//        var computer = computerChoiceArray [randomNumber]
        winnerDecide(yourChiceString : your, yourChoiceNumber: 0)
        }
    
    @IBAction func paper(_ sender: Any)
    {
    var your = "Paper"
   // let randomNumber = Int.random(in: 0...2)
//        var computer = computerChoiceArray [randomNumber]
      winnerDecide(yourChiceString : your , yourChoiceNumber: 1)
    }
    
    @IBAction func scissors(_ sender: Any)
    {
    var your = "Scissors"
//        let randomNumber = Int.random(in: 0...2)
//        var computer = computerChoiceArray [randomNumber]
        winnerDecide(yourChiceString : your , yourChoiceNumber: 2)

        
    }
   
    func winnerDecide(yourChiceString : String, yourChoiceNumber: Int)
    {
        let computerChoiceNumber = Int.random (in: 0...2)
        var computer = computerChoiceArray[computerChoiceNumber]
        yourChoice.text = yourChiceString
        computerChoice.text = computer
        var winnerText:String! = yourChoiceNumber == computerChoiceNumber ? "Tie": ((yourChoiceNumber + 2) % 3) == computerChoiceNumber ? "You Win" : "You Lose"
        winner.text = winnerText

    }
    
}

