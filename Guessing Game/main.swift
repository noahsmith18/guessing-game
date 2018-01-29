//
//  main.swift
//  Guessing Game
//
//  Created by Noah Smith on 1/23/18.
//  Copyright © 2018 Noah Smith. All rights reserved.
//
import Cocoa
var playAgain = "yes"
while playAgain == "yes"{
//Generate a random number
// TODO: Cast randomNumber to an int
    let randomNumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 0
print("Please guess a number.")
guess = Int(readLine()!)!
while guess == nil {
    print("Please guess a number")
    guess = Int(readLine()!)
    }
//Determine wrong or right(Loop until correct)
while guess != randomNumber && tries != 4 {
    if randomNumber > guess!  {
        print("The number was higher! 🤦‍♂️")
    } else if randomNumber < guess! {
        print("The Random Number was lower! 🤦‍♂️")
    }
    print("Guess again")
    guess = Int(readLine()!)!
    while guess == nil {
        print("Please guess a number.")
        guess = Int(readLine()!)
    }
    tries += 1
    }
//If correct ask if they want to play again
if randomNumber == guess! {
    print("YOU WON !!!!!!!! 🎉")
}
    if tries == 4 {
        print("Oof! You're out of tries. The number was \(randomNumber). Do you want to play again?")
    }
//If incorrect tell them the correct answer and ask them to play again
print("Do you want to play again?")
    playAgain = readLine()!
}
