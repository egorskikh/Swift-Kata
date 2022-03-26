import UIKit

// Alphabetical Addition. Swift.

func addLetters(_ letters: [Character]) -> Character {
    if letters.isEmpty { return "z"}
    let alphabet: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
    return alphabet[letters.reduce(into: 25, { $0 += alphabet.firstIndex(of: $1)! + 1 }) % 26]
}

