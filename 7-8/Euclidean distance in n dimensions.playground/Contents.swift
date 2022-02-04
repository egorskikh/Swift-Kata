import UIKit

// Euclidean distance in n dimensions. Swift.

/*
 XCTAssertEqual(euclideanDistanceBetween([-1, 2, 5], and: [2, 4, 9]), 5.39)
 */

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
    let dist = zip(point1, point2).reduce(0, { $0 + pow(($1.0 - $1.1), 2) }).squareRoot()
    return (dist * 100).rounded() / 100
}
