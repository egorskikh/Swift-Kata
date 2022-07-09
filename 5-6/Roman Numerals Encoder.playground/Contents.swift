import UIKit

// Roman Numerals Encoder. Swift.

func solution(_ number:Int) -> String {
    var num = number
    var result = ""
    _ = [(1000,"M"),(900,"CM"),(500,"D"),(400,"CD"),(100,"C"),(90,"XC"),
         (50,"L"),(40,"XL"),(10,"X"),(9,"IX"),(5,"V"),(4,"IV"),(1,"I")]
        .map( { val, symbol in
            while num - val >= 0 {
                num -= val; result += symbol
            }
        })
    
    return result
}
