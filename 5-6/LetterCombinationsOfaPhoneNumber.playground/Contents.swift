import UIKit

// 17. Letter Combinations of a Phone Number. Swift.

// Input: digits = "23"
// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

func letterCombinations(_ digits: String) -> [String] {
    
    let numbers: [Int: [Character]] = [ 2 : ["a","b","c"],
                                        3 : ["d","e","f"],
                                        4 : ["g","h","i"],
                                        5 : ["j","k","l"],
                                        6 : ["m","n","o"],
                                        7 : ["p","q","r","s"],
                                        8 : ["t","u","v"],
                                        9 : ["w","x","y", "x"]]
    
    var resultArray = [String]()
    
    for c in digits {
        let letters = numbers[Int(String(c))!, default: [Character]()]
        
        if resultArray.count == 0 {
            resultArray = letters.map { String($0) }
            continue
        }
        
        var newResult = [String]()
        for letter in letters {
            for str in resultArray {
                newResult.append("\(str)\(letter)")
            }
        }
        resultArray = newResult
    }
    
    return resultArray
}

letterCombinations("23") // ["ad","ae","af","bd","be","bf","cd","ce","cf"]
