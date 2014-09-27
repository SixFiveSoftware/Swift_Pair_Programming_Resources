import UIKit
import XCTest

class FizzBuzzExtension: XCTestCase {
    
    func testOneIsOne() {
        XCTAssertEqual(1.FizzBuzz, "1", "1 should return 1")
    }
    
    func testTwoIsTwo() {
        XCTAssertEqual(2.FizzBuzz, "2", "2 should return 2")
    }
    
    func testThreeIsFizz() {
        XCTAssertEqual(3.FizzBuzz, "Fizz", "3 should return Fizz")
    }
    
    func testFourIsFour() {
        XCTAssertEqual(4.FizzBuzz, "4", "4 should return 4")
    }
    
    func testFiveIsBuzz() {
        XCTAssertEqual(5.FizzBuzz, "Buzz", "5 should return Buzz")
    }
    
    func testSixIsFizz() {
        XCTAssertEqual(6.FizzBuzz, "Fizz", "6 should return Fizz")
    }
    
    func testTenIsBuzz() {
        XCTAssertEqual(10.FizzBuzz, "Buzz", "10 should return Buzz")
    }
    
    func testFifteenIsFizzBuzz() {
        XCTAssertEqual(15.FizzBuzz, "FizzBuzz", "15 should return FizzBuzz")
    }
}
