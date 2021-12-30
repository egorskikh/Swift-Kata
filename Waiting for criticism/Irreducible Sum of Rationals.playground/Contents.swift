import UIKit

// Irreducible Sum of Rationals. Swift.

/*
   testing([(1, 2), (1, 3), (1, 4)], (13, 12))
   testing([(1, 3), (5, 3)], (2, 1))
   testingNil([])
   testing([(1, 8), (1, 9)], (17, 72))
 */

func sumFracts(_ l: [(Int, Int)]) -> (Int, Int)? {

    if l.isEmpty { return nil }

    var numerator = 0
    var denominator = 0

    // We get the sum of fractions
    for i in l {
        if numerator == 0 && denominator == 0 {
            numerator = i.0
            denominator = i.1
        } else {
            numerator = (numerator * i.1) + (denominator * i.0 )
            denominator = denominator * i.1
        }
    }

    // Find node
    let setFindNode = euclidsAlgorithm(numerator, denominator)
    let node = setFindNode.1
    
    // Divide into node
    return (numerator / node, denominator / node)
}

func euclidsAlgorithm(_ n1: Int, _ n2: Int) -> (Int, Int) {
    if n1 % n2 == 0 { return (n1, n2) }
    let remainder = n1 % n2
    if remainder == 0 { (remainder,n2) }
    return euclidsAlgorithm(n2, remainder)
}

sumFracts([(1, 2), (1, 3), (1, 4)]) // 13 12


