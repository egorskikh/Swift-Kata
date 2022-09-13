import UIKit

// Generic numeric template formatter

func numericFormatter(_ template: String, _ numbers: String = "1234567890") -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var counter = 0
    var result = ""
    let numCharArray = Array(numbers.characters)
    
    for c in template.characters {
        if alphabet.characters.contains(c) {
            let index = counter % numCharArray.count
            result += String(numCharArray[index])
            counter += 1
        } else {
            result += String(c)
        }
    }
    
    return result
}
