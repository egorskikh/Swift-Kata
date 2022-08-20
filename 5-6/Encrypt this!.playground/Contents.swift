import UIKit

// Encrypt this!

func encryptThis(text:String) -> String {
    return text
        .components(separatedBy: " ")
        .map {
            var a = $0.map { String($0) }
            a[0] = String(a[0].unicodeScalars.first!.value)
            
            if a.count > 2 {
                a.swapAt(1, a.count-1)
            }
            
            return a.joined()
        }
        .joined(separator: " ")
}
