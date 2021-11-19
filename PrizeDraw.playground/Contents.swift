import UIKit
/*
 To participate in a prize draw each one gives his/her firstname.

 Each letter of a firstname has a value which is its rank in the English alphabet.
 A and a have rank 1, B and b rank 2 and so on.

 The length of the firstname is added to the sum of these ranks hence a number som.

 An array of random weights is linked to the firstnames and each som is multiplied
 by its corresponding weight to get what they call a winning number.
 */

func rank(_ st: String, _ we: [Int], _ n: Int) -> String {

    guard !st.isEmpty else { return "No participants" }

    let names = st.split(separator: ",")

    guard names.count >= n else { return "Not enough participants" }

    var namesWinNun = [(String, Int)]()
    names.enumerated().forEach { i, name in
        var winNum = name.count

        for char in name {
            let asciiValue = Int(char.asciiValue!)
            winNum += asciiValue > 90 ? asciiValue - 96 : asciiValue - 64
        }

        winNum *= we[i]
        namesWinNun.append((String(name), winNum))
    }

    let winName = namesWinNun.sorted {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        }
        return $0.1 > $1.1
    } [n - 1].0

    return winName
}
