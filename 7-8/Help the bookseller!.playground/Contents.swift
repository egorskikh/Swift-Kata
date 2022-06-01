import UIKit

// Help the bookseller !. Swift.

func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    guard !listOfArt.isEmpty && !listOfCat.isEmpty else { return "" }
    
    var dict: [Character: Int] = [:]
    
    for x in listOfArt {
        let c = x.characters.first!
        dict[c] = (dict[c] ?? 0) + Int(x.components(separatedBy: " ").last!)!
    }
    
    return listOfCat
        .map { $0.characters.first! }
        .map { "(\($0) : \(dict[$0] ?? 0))" }
        .joined(separator: " - ")
}
