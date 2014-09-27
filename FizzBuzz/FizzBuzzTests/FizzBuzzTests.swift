//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit
import XCTest

class FizzBuzzTests: XCTestCase {
    
    func testOneIsOne() {
        XCTAssertEqual(FizzBuzz.check(1), "1", "1 should return 1")
    }
    
    func testTwoIsTwo() {
        XCTAssertEqual(FizzBuzz.check(2), "2", "2 should return 2")
    }
    
    func testThreeIsFizz() {
        XCTAssertEqual(FizzBuzz.check(3), "Fizz", "3 should return Fizz")
    }
    
    func testFourIsFour() {
        XCTAssertEqual(FizzBuzz.check(4), "4", "4 should return 4")
    }
    
    func testFiveIsBuzz() {
        XCTAssertEqual(FizzBuzz.check(5), "Buzz", "5 should return Buzz")
    }
    
    func testSixIsFizz() {
        XCTAssertEqual(FizzBuzz.check(6), "Fizz", "6 should return Fizz")
    }
    
    func testTenIsBuzz() {
        XCTAssertEqual(FizzBuzz.check(10), "Buzz", "10 should return Buzz")
    }
    
    func testFifteenIsFizzBuzz() {
        XCTAssertEqual(FizzBuzz.check(15), "FizzBuzz", "15 should return FizzBuzz")
    }
}
