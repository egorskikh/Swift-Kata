import UIKit

// Hidden "Cubic" numbers. Swift.

func isHiddenCube(_ number: String) -> Int {
    if Int(number) != nil {
        let cube = Int(number.map { Double(Int("\($0)")!) }.reduce(0) { $0 + pow($1, 3) })
        return cube == Int(number)! ? cube : -1
    }
    
    return -1
}

func isSumOfCubes(_ s: String) -> String {
    var number = ""
    
    let sumOfCubes: [Int] = s.enumerated().map {
        if !$0.element.isNumber {
            defer { number = "" }
            return number == "" ? -1 : isHiddenCube(number)
        }
        
        number += "\($0.element)"
        
        if number.count == 3 {
            defer { number = "" }
            return isHiddenCube(number)
        }
        
        if $0.offset == (s.count - 1) && $0.element.isNumber {
            return isHiddenCube(number)
        }
        
        return -1
    }.filter { $0 != -1 }
    
    return sumOfCubes.isEmpty ?
    "Unlucky"
    :
    "\(sumOfCubes.map{"\($0)"}.joined(separator: " ")) \(sumOfCubes.reduce(0, +)) Lucky"
}
