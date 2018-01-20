//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(_ arg: [Int]) -> Int {
        var sum = 0
        for num in arg {
            sum += num
        }
        return sum
    }
    public func multiply(_ arg: [Int]) -> Int {
        var sum = 1
        for num in arg {
            sum *= num
        }
        return sum
    }
    public func count(_ arg: [Int]) -> Int {
        return arg.count
    }
    public func avg(_ arg: [Int]) -> Int {
        let sum = add(arg)
        return sum / arg.count
    }
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    public func multiply(_ arg: [String]) -> Int {
        var sum = 0
        for num in arg {
            sum *= Int(num)!
        }
        return sum
    }
}
