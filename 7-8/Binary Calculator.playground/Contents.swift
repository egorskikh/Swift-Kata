import UIKit

// Binary Calculator. Swift.

enum Operator {
    case ADD, SUBTRACT, MULTIPLY
}

func calculate(_ a:String, _ b:String, _ oper:Operator) -> String {
  let (n1, n2) = (Int(a, radix: 2) ?? 0, Int(b, radix: 2) ?? 0)
  
    switch oper {
    case .ADD: return String(n1 + n2, radix: 2)
    case .SUBTRACT: return String(n1 - n2, radix: 2)
    case .MULTIPLY: return String(n1 * n2, radix: 2)
  }
    
}
