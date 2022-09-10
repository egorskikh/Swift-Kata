import UIKit

// Lemmings Battle!

func lemmingBattle(_ battlefield: Int, _ green: [Int], _ blue: [Int]) -> String {
    var battlefield = battlefield
    var green = green
    var blue = blue
    let lost: Set = [0]

    while !Set(green).isSubset(of: lost) && !Set(blue).isSubset(of: lost)  {
        green = green.sorted(by: >)
        blue = blue.sorted(by: >)
        
        if green.count < battlefield { battlefield = green.count }
        if blue.count < battlefield { battlefield = blue.count }
        
        for battlefield in 0..<battlefield {
            let outcome = green[battlefield] - blue[battlefield]
                    
            if outcome < 0 {
                blue[battlefield] = abs(outcome)
                green[battlefield] = 0
            }

            if outcome == 0 {
                green[battlefield] = 0
                blue[battlefield] = 0
            }

            if outcome > 0 {
                green[battlefield] = outcome
                blue[battlefield] = 0
            }
        }
    }
    
    let amountGreen = green.reduce(0, +)
    let amountBlue = blue.reduce(0, +)
    
    if amountGreen == amountBlue { return "Green and Blue died" }
    
    return amountGreen > amountBlue ?
        "Green wins: \( green.sorted(by: >).compactMap { $0 != 0 ? String($0) : "" }.joined(separator: " ").trimmingCharacters(in: .whitespaces) )" :
        "Blue wins: \( blue.sorted(by: >).compactMap { $0 != 0 ? String($0) : "" }.joined(separator: " ").trimmingCharacters(in: .whitespaces) )"
}
