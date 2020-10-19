//
//  MathGameEngine.swift
//  MVCandOOP
//
//  Created by Alexandra Plukis on 10/8/20.
//  Copyright © 2020 Alexandra Plukis. All rights reserved.
//

import Foundation

// This enum is here for ease of use!
// each case refers to the different random ranges
// we want to have for the math functions and the 
// goal and current numbers
enum RandomSeeds {
    case goal
    case current
    case division
    case multiplication
    
    // Each case of the RandomSeeds has a closed
    // range which actually is what we call
    // when we randomize our values
//    var range: ClosedRange<Int> {
//        // TODO
//    }
}

// This MathGameEngine is our Model for this application.
class MathGameEngine {
    
    init() {
        // TODO
        // get random
        
        // This loop is used so that we never have equal values 
        // for multiplyBy and divideBy
        // TODO
    }
    
    private func randomize() {
      
        
        // This loop is used so that we never have equal values 
        // for multiplyBy and divideBy
        // TODO
    }
    
    func add() {
        //TODO
    }
    
    func subtract() {
        //TODO
    }
    
    func multiply() {
        //TODO
    }
    
    func divide() {
        //TODO
    }
    
    func checkGameState() -> Bool {
        //TODO
        
        
        return false
    }
    
    func getAddString() -> String {
        //TODO
        
        return ""
    }
    
    func getSubtractString() -> String {
        //TODO
        
        return ""
    }
    
    func getDivideString() -> String {
        //TODO
        
        return ""
    }
    
    func getMultiplyString() -> String {
        //TODO
        
        return ""
    }
    
    func getGoalString() -> String {
        //TODO
        
        return ""
    }
    
    func getCurrentString() -> String {
        //TODO
        
        return ""
    }
}

