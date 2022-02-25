import UIKit

// Fizz Buzz Cuckoo Clock. Swift.

func fizzBuzzCuckooClock(_ time: String) -> String {
    let components = time.components(separatedBy: ":")
    let minute = Int(components[1])!
    
    if [0, 30].contains(minute) {
        let hour = Int(components[0])!
        let count = minute == 30 ? 1 : (hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour))
        return (0..<count).map({ _ in "Cuckoo" }).joined(separator: " ")
    } else {
        let buffer = [(3, "Fizz"), (5, "Buzz")].compactMap({ minute % $0 == 0 ? $1 : nil })
        return buffer.isEmpty ? "tick" : buffer.joined(separator: " ")
    }
    
}
