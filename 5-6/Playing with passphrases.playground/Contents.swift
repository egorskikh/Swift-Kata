import UIKit

// Playing with passphrases

func playPass(_ s: String, _ n: Int) -> String {
    return String(s.unicodeScalars.enumerated().map {
        switch $1.value {
        case 0x0041...0x005A,
            0x0061...0x007A: return $0 % 2 == 0 ? "\(Character(UnicodeScalar(charShift($1.value, n))!))".uppercased()
            : "\(Character(UnicodeScalar(charShift($1.value, n))!))".lowercased()
        case 0x0030...0x0039: return "\(9-Int("\(Character($1))")!)"
            default: break }; return "\(Character($1))"
    }.joined(separator: "").characters.reversed())
}

func charShift(_ from: UInt32, _ n: Int) -> UInt32 {
    let chars = Array<UInt32>([0x0041...0x005A, 0x0061...0x007A].joined())
    let p = chars.index(of: from)! + n
    return chars[p >= chars.count ? p - chars.count : p]
}
