//
//  ReduceFractionKataTests.swift
//  ReduceFractionKataTests
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit
import XCTest

class ReduceFractionKataTests: XCTestCase {
    
    var fraction = Fraction(1,1)
    
    override func setUp() {
        fraction = Fraction(7,21)
    }
    
    func testFractionNumeratorEquals7() {
        //let fraction = Fraction(3, 5)
        XCTAssertEqual(fraction.numerator, 7, "Numerator should equal 7")
    }
    
    func testFractionDenominatorEquals21() {
        //let fraction = Fraction(3, 17)
        XCTAssertEqual(fraction.denominator, 21, "Denominator should equal 21")
    }
    
    func testFractionGCDis7() {
     //   let fraction = Fraction(7, 21)
        XCTAssertEqual(fraction.gcd, 7, "7/21 GCD should equal 7")
    }
    
    func testFiveTwentyfirstsGCDis1() {
        fraction = Fraction(5, 21)
        XCTAssertEqual(fraction.gcd, 1, "5/21 GCD should equal 1")
    }
    
    func testFourNinetysixthsGCDis4() {
        fraction = Fraction(4, 96)
        XCTAssertEqual(fraction.gcd, 4, "4/96 GCD should equal 4")
    }
    
    func testFourNinetythsGCDis2() {
        fraction = Fraction(4, 90)
        XCTAssertEqual(fraction.gcd, 2, "4/90 GCD should equal 2")
    }
    
    func testTenThirtiethsGCDis10() {
        fraction = Fraction(10, 30)
        XCTAssertEqual(fraction.gcd, 10, "10/30 GCD should be 10")
    }
    
    func testEightFourteenthsGCDis2() {
        fraction = Fraction(8, 14)
        XCTAssertEqual(fraction.gcd, 2, "8/14 GCD should be 2")
    }
    
    func testFourteenEighthsGCDis2() {
        fraction = Fraction(-14, 8)
        XCTAssertEqual(fraction.gcd, 2, "8/14 GCD should be 2")
    }
    
    func testSevenTwentyfirstsReducedIsOneThird() {
        fraction.reduce()
        XCTAssertEqual(fraction.numerator, 1, "numerator should be 1")
        XCTAssertEqual(fraction.denominator, 3, "denom should be 3")
    }
    
}
