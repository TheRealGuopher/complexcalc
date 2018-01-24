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
    
    // object functions
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var total = ["x": 0, "y": 0]
        total["x"] = lhs["x"]! + rhs["x"]!
        total["y"] = lhs["y"]! + rhs["y"]!
        return total
    }
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var total = ["x": 0, "y": 0]
        total["x"] = lhs["x"]! - rhs["x"]!
        total["y"] = lhs["y"]! - rhs["y"]!
        return total
    }
    // math op functions
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total = beg
        for num in args {
            total = op(total, num)
        }
        return total
    }
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    // tuple functions
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    // array functions
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
    // arbitrary functions
    public func count(_ arg: [Int]) -> Int {
        return arg.count
    }
    public func avg(_ arg: [Int]) -> Int {
        let sum = add(arg)
        return sum / arg.count
    }
    // simple two number functions
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
