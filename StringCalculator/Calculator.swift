//
//  Calculator.swift
//  StringCalculator
//
//  Created by Adrián Silva on 07/05/2019.
//  Copyright © 2019 adsilva. All rights reserved.
//

import Foundation

struct Calculator {
    
    func add(numbers: String) -> Int {
        let integers = numbers
            .components(separatedBy: CharacterSet(arrayLiteral: ",", "\n"))
            .compactMap { Int($0) }
        
        if integers.isEmpty {
            return 0
        }
        
        return integers
            .reduce(0, +)
    }
}
