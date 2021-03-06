//
//  ViewController.swift
//  MVCandOOP
//
//  Created by Alexandra Plukis on 10/8/20.
//  Copyright © 2020 Alexandra Plukis. All rights reserved.
//

import UIKit

// The Model and the View do NOT have any interactions!

//          C  O  N  T  R  O  L  L  E  R
//           / /\                  /\  \
//          /  /                    \   \
//         /  / User                 \   \
// Update /  /  Action         Notify \   \ Update
//       /  /                          \   \
//      \/ /                            \  \/
//     V I E W                        M O D E L

// The Controller is this file: the name even suggests it ("UIViewController")
// The View is the UIView that we created in the Storyboard
// The Model is the MathGameEngine defined in the MathGameEngine.swift file


// Notice how all of the changes that happen to the view do not happen because the 
// model directly influences the UIView. Instead, the Model indicates to the Controller
// that something has changed, and the Controller then updates the View accordingly.
// Note that the Controller itself does not manipulate the current number or the goal--
// all of these traits are managed by the Model. This contrasts with the second app that
// creates the same game but without OOP and MVC principles.

class ViewController: UIViewController {
    //TODO: add goal Label
    @IBOutlet weak var currentLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    
    //TODO: add multiply button
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    // this gameEngine will serve as our model
    let gameEngine = MathGameEngine()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set the current value of the current label
        //TODO:
        
        // update the labels of the goal and the buttons
        //TODO:
    }

    
    // The add button calls this function.
    // First we call the model to add, and then we
    // check for changes in another function 
    // (which also uses the model)
    @IBAction func add(_ sender: Any) {
        //TODO:
    }
    
    // The subtract button calls this function.
    // First we call the model to subtract, and then we
    // check for changes in another function 
    // (which also uses the model)
    @IBAction func subtract(_ sender: Any) {
        //TODO:
    }
    
    
    //TODO: CONNECT THIS BUTTON ACTION
    // The mutiply button calls this function.
    // First we call the model to mutiply, and then we
    // check for changes in another function 
    // (which also uses the model)
    @IBAction func mutiply(_ sender: Any) {
        //TODO:
    }
    
    // The divide button calls this function.
    // First we call the model to divide, and then we
    // check for changes in another function 
    // (which also uses the model)
    @IBAction func divide(_ sender: Any) {
        //TODO:
    }
    
    // This function updates the labels of all of the 
    // math functions and the goal label. This is only
    // necessary to call when the user has hit the goal amount 
    // and won this current round
    func updateLabels() {
        //TODO: update all labels
    }
    
    // This function is specific to updating the current label,
    // which is necessary after we perform math or at the very beginning of
    // the game
    func updateCurrent() {
        //TODO: update current label
    }
    
    // Checking for changes should occur each time we perform math.
    // The current label must be updated and afterwards we use the gameEngine to
    // check if we have won the round. If so, we need to update the labels
    // and show the "nice job" message
    func checkForChanges() {
        //TODO: update current, check for game win, and deal with consequences
    }
    
    // This function shows a message reading "nice job"
    // this message fades in and fades out
    func showCongratulatoryMessage() {
        //TODO: make message show up and disappear with animations
    }
    
}

