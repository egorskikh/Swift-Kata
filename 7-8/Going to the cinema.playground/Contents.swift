import UIKit

// Going to the cinema. Swift.

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var res = 0, a = 0.0, c = card, t = ticket
    
    while ceil(a) <= ceil(c) {
        a = a + ticket
        t = t * perc
        c += t
        res += 1
    }
    
    return res
}
