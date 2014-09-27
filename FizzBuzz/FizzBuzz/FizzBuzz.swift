//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import Foundation

struct FizzBuzz {
    static func check(value: Int) -> String {
        var returnValue = "\(value)"
        
        if value % 3 == 0 {
            returnValue = "Fizz"
        }
        if value % 5 == 0 {
            returnValue = (returnValue == "Fizz" )
                ? "FizzBuzz"
                : "Buzz"
        }
        return returnValue
    }
}

extension Int {
    var FizzBuzz: String {
        var returnValue = "\(self)"
            
            if self % 3 == 0 {
                returnValue = "Fizz"
            }
            if self % 5 == 0 {
                returnValue = (returnValue == "Fizz" )
                    ? "FizzBuzz"
                    : "Buzz"
            }
            return returnValue
    }
}