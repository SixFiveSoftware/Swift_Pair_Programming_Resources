//
//  Fraction.swift
//  ReduceFractionKata
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import Foundation

class Fraction {
    
    class func GCD(num: Int, denom: Int) -> Int {
        if denom == 0 { return num }
        return GCD(denom, denom: num % denom)
    }
    
    var numerator: Int
    var denominator: Int
    
    init(_ numerator: Int, _ denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    var gcd: Int {
        return Fraction.GCD(numerator, denom: denominator)
//            var current = numerator
//            while current > 0 {
//                if numerator % current == 0 && denominator % current == 0 {
//                    return current
//                }
//                --current
//            }
//            return 1
        }
    
    func reduce() {
        var newGcd = gcd
        numerator /= newGcd
        denominator /= newGcd
    }
}