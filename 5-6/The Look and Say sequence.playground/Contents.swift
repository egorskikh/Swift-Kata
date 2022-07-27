import UIKit

// The Look and Say sequence

func getLines(_ num:Int?) -> String {
    if num == nil || num! <= 0 { return "-1"}
    var res = ["1"]
    for idx in 0..<num! - 1 {
        var str = "", preChar : Character?, count = 1
        for char in res[idx] {
            if char == preChar {
                count += 1
            }else {
                if let val = preChar {
                str += "\(count)\(val)"
                }
                preChar = char
                count = 1
            }
        }
        str += "\(count)\(preChar!)"
        res += [str]
    }
    
    return String(res.reduce(""){$0 + "," + $1}.dropFirst())
}
