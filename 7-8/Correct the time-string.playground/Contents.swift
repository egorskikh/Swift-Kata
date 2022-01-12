import UIKit

// Correct the time-string. Swift.

func correct(_ timeString: String?) -> String? {
    
    guard
        let timeStr = timeString,
        !timeStr.isEmpty
    else {
        return timeString
    }
    
    var numbers = timeStr.components(separatedBy: ":").map { Int($0) }.filter { $0 != nil }!
    
    guard numbers.count == 3 else { return nil }
    
    if numbers[2] > 59 {
        numbers[1] += numbers[2] / 60
        numbers[2] %= 60
    }
    
    if numbers[1] > 59 {
        numbers[0] += numbers[1] / 60
        numbers[1] %= 60
    }
    
    numbers[0] %= 24
    
    return numbers.map { $0 > 9 ? String($0) : "0" + String($0) }.joined(separator: ":")
}
