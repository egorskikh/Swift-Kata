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
    
    // Find gcd
    let setFindNode = euclidsAlgorithm(numerator, denominator)
    let gcd = setFindNode.1
    
    // Divide into gcd
    return (numerator / gcd, denominator / gcd)
}

func euclidsAlgorithm(_ numerator: Int, _ denominator: Int) -> (Int, Int) {
    
    if numerator % denominator == 0 {
        // denominator - this gcd
        return (numerator, denominator)
    }
    let remainder = numerator % denominator
    return euclidsAlgorithm(denominator, remainder)
}

sumFracts([(1, 2), (1, 3), (1, 4)]) // 13 12


