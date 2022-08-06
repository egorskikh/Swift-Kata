import UIKit

// Splitting the Workload (part I)

func splitlist(_ list: [Int]) -> ([Int], [Int]) {
    let m = list.reduce(0, +) / 2
    
    var combos : [([Int], Int)] = [([], 0)]
    
    for (i, val) in list.enumerated() {
        combos += combos.filter{ (a, s) in s + val <= m}.map{(a, s) in (a + [i], s + val) }
    }
    
    let arr = combos.sorted{abs($0.1 - m) > abs($1.1 - m)}.last!.0
    var ma = [Int](), mb = [Int]()
    
    for (i, val) in list.enumerated() {
        if arr.contains(i) { ma.append(val) }
        else { mb.append(val) }
    }
    
    return (ma, mb)
}
