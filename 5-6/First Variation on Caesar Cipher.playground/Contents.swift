import UIKit

// First Variation on Caesar Cipher. Swift.

func shiftMod(_ sign: Int, _ shift: Int, _ k: Int) -> Int {
    return modulus(sign * (shift + k), 26)
}

func movingShiftAux(_ s: String, _ shift: Int, _ sign: Int) -> String {
    let ch = [UInt8](s.utf8)
    var res = [UInt8]()
    var d: Int
    for (k, c) in ch.enumerated() {
        let sVal = shiftMod(sign, shift, k)
        if c >= 65 && c <= 90 {
            d = (Int(c) - 65 + sVal) % 26 + 65
        } else {
            if c >= 97 && c <= 122 {
                d = (Int(c) - 97 + sVal) % 26 + 97
            } else {d = Int(c)}
        }
        res.append(UInt8(d))
    }
    return String(res.reduce("", { $0 + String(format: "%c", $1)}).characters)
}
func movingShift(_ s: String, _ shift: Int) -> [String] {
    let v = movingShiftAux(s, shift, 1)
    return chunk(v, 5)
}
func demovingShift(_ arr: [String], _ shift: Int) -> String {
    let s = arr.joined(separator: "")
    return movingShiftAux(s, shift, -1)
}
