import UIKit

// Find the smallest

func smallest(_ n: Int) -> (Int, Int, Int) {
    var min = n
    var i = 0
    var j = 0
    
    for removeIndex in n.description.characters.indices {
        var strN = n.description
        let digit = strN.remove(at: removeIndex)
        
        for insertIndex in n.description.characters.indices {
            var newStrN = strN
            newStrN.insert(digit, at: insertIndex)
            if Int(newStrN)! < min {
                min = Int(newStrN)!
                i = newStrN.distance(from: newStrN.startIndex, to: removeIndex)
                j = newStrN.distance(from: newStrN.startIndex, to: insertIndex)
            }
        }
        
    }
    
    return (min, i, j)
}
