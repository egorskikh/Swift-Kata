import UIKit

// Roman Numerals Decoder. Swift.

func value(of numeral: Character) -> Int? {
    switch numeral {
    case "I": return 1
    case "V": return 5
    case "X": return 10
    case "L": return 50
    case "C": return 100
    case "D": return 500
    case "M": return 1000
    default: return nil
    }
}

func solution(_ string: String) -> Int {
    let numerals = string.characters.flatMap(value)
    let sum = numerals.reduce(0, +)
    
    let difference = zip(numerals, numerals.dropFirst())
        .filter(<)
        .map { $0.0 }
        .reduce(0, +)
    
    return sum - difference * 2
}
