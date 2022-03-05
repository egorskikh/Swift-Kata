import UIKit

// Financing a purchase. Swift.

func amort(_ rate: Double, _ balance: Double, _ term: Int, _ numPayments: Int) -> String {
    
    var (b, statement) = (balance, "")
    let r = rate/1200
    let n = r * b
    let d = 1 - pow(1.0 + r, Double(-1 * term))
    let c = n / d
    
    for _ in 1 ... numPayments {
      let i = b * r
      let p = c - i
      b -= p
      statement = "num_payment \(numPayments) c \(Int(round(c))) princ \(Int(round(p))) int \(Int(round(i))) balance \(Int(round(b)))"
    }
    
    return statement
}
