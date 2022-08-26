import UIKit

// Common Denominators

func GCD(x: Int, y: Int) -> Int {
    var x = x, y = y
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}

func LCM(x: Int?, y: Int) -> Int {
    x == nil ? y : x! * y / GCD(x: x!, y: y)
}

func convertFracts(_ l: [(Int, Int)]) -> [(Int, Int)] {
    var lcm: Int?
    lcm = l.reduce(lcm) { (partialResult: Int?, tuple: (Int, Int)) -> Int in LCM(x: partialResult, y: tuple.1 / GCD(x: tuple.0, y: tuple.1)) }
    return l.map { i, j in (i * lcm! / j, lcm!) }
}a
