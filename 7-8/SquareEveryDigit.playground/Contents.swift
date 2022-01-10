/*
 Square Every Digit. Swift.

 For example, if we run 9119 through the function,
 811181 will come out, because 92 is 81 and 12 is 1.
 */

func squareDigits(_ num: Int) -> Int {
    var resultString = ""

    for i in String(num) {
        let value = (Int(String(i)) ?? 1) * (Int(String(i)) ??  1)
        resultString += String(value)
    }

    return Int(resultString) ?? 0
}

