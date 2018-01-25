//
//  main.swift
//  Guessing Game
//
//  Created by Noah Smith on 1/23/18.
//  Copyright © 2018 Noah Smith. All rights reserved.
//

import Cocoa

//Generate a random number
var randomNumber = Int(arc4random_uniform(100))
var guess: Int?

//Ask for user input
print("Please guess a number.")

//Take user input
guess = Int(readLine()!)!

if randomNumber == guess {
    print("YOU WON!!!!!!!!! 🎉")
} else if randomNumber > guess! {
    print("The number is higher! 🤦‍♂️")
} else if randomNumber < guess! {
    print("The number is lower! 🤦‍♂️")
}
//Determine if it's wrong or right (Loop until correct)


//If correct, ask if they want to play again


//If incorrect, tell them the correct answer and ask them to play again

