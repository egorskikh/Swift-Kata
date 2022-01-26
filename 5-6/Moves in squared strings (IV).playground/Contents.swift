import UIKit

// Moves in squared strings (IV). Swift.

func diag2Sym(_ s: String) -> String {
    return vertMirror(horMirror(diag1Sym(s)))
}

func rot90Counter(_ s: String) -> String {
    return horMirror(diag1Sym(s))
}

func selfieDiag2Counterclock(_ s: String) -> String {
    var r: [String] = [String]()
    let arr = s.characters.split(separator: "\n").map(String.init)
    let arr1 = diag2Sym(s).characters.split(separator: "\n").map(String.init)
    let arr2 = rot90Counter(s).characters.split(separator: "\n").map(String.init)
    for (i, element) in arr.enumerated() {
        r.append(element + "|" + arr1[i] + "|" + arr2[i])
    }
    return r.joined(separator: "\n")
}

func oper(_ fcn: (String) -> String, _ s: String) -> String {
    return fcn(s)
}
