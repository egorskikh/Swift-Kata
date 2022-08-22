import UIKit

// 1RM Calculator

func calculate1RM(_ weight: Int,_ reps: Int) -> Int? {
    if reps == 0 { return nil }
    
    let w: Double = Double(weight)
    let r: Double = Double(reps)
    
    let a = w * (1 + (r / 30))
    let b = (100 * w) / (101.3 - 2.67123 * r)
    let c = w * pow(r, 0.1)
    
    return Int(round([a,b,c].sorted().last ?? 0))
}
