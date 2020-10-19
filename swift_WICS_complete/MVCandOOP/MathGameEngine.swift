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
    var range: ClosedRange<Int> {
        switch self {
        case .goal:
            return -30...30
        case .current:
            return -5...5
        case .division:
            return 2...3
        case .multiplication:
            return 2...4
        }
    }
}

// This MathGameEngine is our Model for this application.
class MathGameEngine {
    private var goal: Int
    private var current: Int
    private var divideBy: Int
    private var multiplyBy: Int
    private let addBy: Int = 1
    private let subtractBy: Int = 1
    
    init() {
        goal = Int.random(in: RandomSeeds.goal.range)
        current = Int.random(in: RandomSeeds.current.range)
        divideBy = Int.random(in: RandomSeeds.division.range)
        multiplyBy = Int.random(in:RandomSeeds.multiplication.range)
        
        // This loop is used so that we never have equal values 
        // for multiplyBy and divideBy
        while (multiplyBy == divideBy) {
            multiplyBy = Int.random(in:RandomSeeds.multiplication.range)
        }
    }
    
    private func randomize() {
        goal = Int.random(in: RandomSeeds.goal.range)
        divideBy = Int.random(in: RandomSeeds.division.range)
        multiplyBy = Int.random(in:RandomSeeds.multiplication.range)
        
        // This loop is used so that we never have equal values 
        // for multiplyBy and divideBy
        while (multiplyBy == divideBy) {
            multiplyBy = Int.random(in:RandomSeeds.multiplication.range)
        }
    }
    
    func add() {
        current += addBy
    }
    
    func subtract() {
        current -= subtractBy
    }
    
    func multiply() {
        current *= multiplyBy
    }
    
    func divide() {
        current /= divideBy
    }
    
    func checkGameState() -> Bool {
        if (current == goal) {
            randomize()
            return true
        }
        return false;
    }
    
    func getAddString() -> String {
        return "+ \(addBy)"
    }
    
    func getSubtractString() -> String {
        return "- \(subtractBy)"
    }
    
    func getDivideString() -> String {
        return "/ \(divideBy)"
    }
    
    func getMultiplyString() -> String {
        return "* \(multiplyBy)"
    }
    
    func getGoalString() -> String {
        return "\(goal)"
    }
    
    func getCurrentString() -> String {
        return "\(current)"
    }
}

