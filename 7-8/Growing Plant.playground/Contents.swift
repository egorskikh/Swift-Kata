import UIKit

// Growing Plant. Swift.

/*
 XCTAssertEqual(growingPlant(100, 10, 910), 10)
 XCTAssertEqual(growingPlant(10, 9, 4), 1)
 XCTAssertEqual(growingPlant(5, 2, 5), 1)
 XCTAssertEqual(growingPlant(5, 2, 6), 2)
 */

func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
    var currentHeight = upSpeed
    var days = 1
    while currentHeight < desiredHeight {
        currentHeight -= downSpeed
        currentHeight += upSpeed
        days += 1
    }
    return days
}

