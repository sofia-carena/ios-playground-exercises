import UIKit
import XCTest

// Exercise 1

class DistanceCalculator {
    func calculateDistance(distance: UInt) -> String {
        switch distance {
        case 0:
            return "Here"
        case 0..<5:
            return "Immediate vicinity"
        case 5...15:
            return "Near"
        case 16...40:
            return "Kind of far"
        default:
            return "Far"
        }
    }
}

// Unit Test Exercise 1

class DistanceTest: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    func testAll() throws {
        let distanceCalculator = DistanceCalculator()
        
        let distanceHere = distanceCalculator.calculateDistance(distance: 0)
        let distanceImmediate = distanceCalculator.calculateDistance(distance: 4)
        let distanceNear = distanceCalculator.calculateDistance(distance: 10)
        let distanceKindFar = distanceCalculator.calculateDistance(distance: 18)
        let distanceFar = distanceCalculator.calculateDistance(distance: 80)
        
        XCTAssertEqual("Here", distanceHere)
        XCTAssertEqual("Immediate vicinity", distanceImmediate)
        XCTAssertEqual("Near", distanceNear)
        XCTAssertEqual("Kind of far", distanceKindFar)
        XCTAssertEqual("Far", distanceFar)
    }
}

DistanceTest.defaultTestSuite.run()

// Exercise 2

func countLowerAndGreater(_ arr: Array<Int>, _ numberToCompare: Int) -> String {
    var lowerCount = 0
    var greaterCount = 0
    
    for n in arr {
        if n < numberToCompare {
            lowerCount += 1
        } else if n > numberToCompare {
            greaterCount += 1
        }
    }
    return "There are \(lowerCount) numbers lower and \(greaterCount) greater than \(numberToCompare)"
}

// Unit Test Exercise 2

class CountLowerAndGreaterTest: XCTestCase {
    func testCount() throws {
        let count = countLowerAndGreater([110, 20, 100, 0, 200], 100)
        let expectedCount = "There are 2 numbers lower and 2 greater than 100"
        XCTAssertEqual(expectedCount, count)
    }
}

CountLowerAndGreaterTest.defaultTestSuite.run()

// Exercise 3

func returnIfPositiveInteger(number: String) -> String{

    guard let value = Int(number), value > 0 else {
        return "Not a positive integer"
    }
    return number
}

// Unit Test Exercise 2

class ReturnIfPositiveIntegerTest: XCTestCase {
    func testForPositiveInteger() throws {
        let notPositiveInt = "Not a positive integer"
        
        let abc = returnIfPositiveInteger(number: "abc")
        let negativeInt = returnIfPositiveInteger(number: "-10")
        let positiveInt = returnIfPositiveInteger(number: "10")
        
        XCTAssertEqual(notPositiveInt, abc)
        XCTAssertEqual(notPositiveInt, negativeInt)
        XCTAssertEqual("10", positiveInt)
    }
}

ReturnIfPositiveIntegerTest.defaultTestSuite.run()
