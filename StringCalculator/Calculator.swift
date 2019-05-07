//
//  Calculator.swift
//  StringCalculator
//
//  Created by Adrián Silva on 07/05/2019.
//  Copyright © 2019 adsilva. All rights reserved.
//

import Foundation

enum CalculatorError: Error {
    case negativeError
}

struct Calculator {
    
    func add(numbers: String) throws -> Int {
        let integers = numbers
            .components(separatedBy: CharacterSet(arrayLiteral: ",", "\n"))
            .compactMap { Int($0) }
        
        let negativeIntegers = integers
            .filter { $0 < 0 }
        
        if !negativeIntegers.isEmpty {
            throw CalculatorError.negativeError
        }
        
        if integers.isEmpty {
            return 0
        }
        
        return integers
            .reduce(0, +)
    }
}
