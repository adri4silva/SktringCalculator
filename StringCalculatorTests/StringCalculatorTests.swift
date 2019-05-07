//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Adrián Silva on 07/05/2019.
//  Copyright © 2019 adsilva. All rights reserved.
//

import XCTest
@testable import StringCalculator

class StringCalculatorTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUp() {
        calculator = Calculator()
    }

    func test_GivenACalculator_WhenAnEmptyStringIsPassed_ThenTheSumIsZero() {
        let result = calculator.add(numbers: "")
        
        XCTAssertEqual(result, 0)
    }
    
    func test_GivenACalculator_WhenWePassOneNumber_ThenTheSumIsTheSameNumber() {
        let result = calculator.add(numbers: "1")
        
        XCTAssertEqual(result, 1)
    }
    
    func test_GivenACalculator_WhenWePassMoreThanOneNumberAndLessThan4_ThenTheSumIsTheTotalResult() {
        let result = calculator.add(numbers: "1,-3,4")
        
        XCTAssertEqual(result, 2)
    }
    
    func test_GivenACalculator_WhenWePassMoreThanOneNumber_ThenTheSumIsTheTotalResult() {
        let result = calculator.add(numbers: "1,4,5,6,7,89,2")
        
        XCTAssertEqual(result, 114)
    }
    
    func test_GivenACalculator_WhenWePassCharactersBetweenLines_ThenTheSumIsTheTotalResult() {
        let result = calculator.add(numbers: "1\n\n4,5,6,7\n89,,,2")
        
        XCTAssertEqual(result, 114)
    }
}
