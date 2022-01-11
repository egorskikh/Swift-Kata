import UIKit

// Numbers with this digit inside. Swift

func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
    let numbers = (1...x).filter {String($0).contains(String(d))}
    
    return [Int64(numbers.count),
            numbers.reduce(Int64(0), +),
            numbers.count > 0 ? numbers.reduce(Int64(1), *) : Int64(0)]
}


