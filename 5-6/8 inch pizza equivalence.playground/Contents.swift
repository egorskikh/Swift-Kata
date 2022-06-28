import UIKit

// 8 inch pizza equivalence. Swift.

func howManyPizzas(_ n: Int) -> String {
    return "pizzas: \(n*n/64), slices: \(Int(round(Float(n*n%64)/8)))"
}
