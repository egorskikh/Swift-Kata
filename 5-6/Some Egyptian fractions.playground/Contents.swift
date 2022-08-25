import UIKit

// Some Egyptian fractions

func decompose(_ nrStr: String, _ drStr: String) -> String {
    var num = Int(nrStr)!, den = Int(drStr)!
    var arr = [String]()
    if num >= den {
        arr.append(String(num / den))
        num %= den
    }
    var i = 2
    while true {
        if den <= i * num {
            arr.append("1/\(i)")
            num = num * i - den
            den *= i
        }
        if (num == 0) {
            break
        }
        i += 1
    }
    return arr.joined(separator: ",")
}
