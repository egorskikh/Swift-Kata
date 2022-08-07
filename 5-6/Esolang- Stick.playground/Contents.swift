import UIKit

// Esolang: Stick

func interpreter(_ prog: String) throws -> String {
    let clean = prog.replacingOccurrences(of: "[^*\\-\\!\\+\\^\\[\\]]", with: "", options: [.regularExpression])
    let input = Array(clean)
    var jumps = [Int : Int]()
    var opens = [Int]()
    var ls = [Int]()
    var ys = ""
    ls.append(0)
    for i in stride(from: 0, through: input.count - 1, by: 1) {
        let c = input[i]
        if c == "[" {
            opens.append(i)
        } else if c == "]" {
            jumps[i] = opens[opens.count-1]
            jumps[opens[opens.count-1]] = i
            opens.removeLast()
        }
    }
    var i = 0
    while i < input.count {
        let c = input[i]
        let el = ls[ls.count-1]
        if c == "^" {
            if ls.count < 2 {
                throw NSError(domain: "esolang", code: 500, userInfo: nil)
            }
            ls.removeLast()
        } else if c == "!" {
            ls.append(0)
        } else if c == "+" {
            ls[ls.count-1] = (el + 1) % 256
        } else if c == "-" {
            ls[ls.count-1] = (el + 256 - 1) % 256
        } else if c == "*" {
            ys.append(Character(UnicodeScalar(el)!))
        } else if c == "[" && el == 0 {
            i = jumps[i] ?? 0
        } else if c == "]" && el != 0 {
            i = jumps[i] ?? 0
        }
        i += 1
    }
    return ys
}
