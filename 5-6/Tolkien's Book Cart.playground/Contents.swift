import UIKit

// Tolkien's Book Cart

class Tolkien {
    static func calculateCartTotal(_ books: [String]) -> Int {
        var result = 0, grpF = [String](), grpT = [String](), grpR = [String](), grpH = [String]()
        
        for obj in books {
            if obj == "F" { grpF += [obj]
            }else if obj == "T" { grpT += [obj]
            }else if obj == "R" { grpR += [obj]
            }else if obj == "H" { grpH += [obj] }
        }
        
        for idx in 0..<books.count {
            var num = 0
            if idx < grpF.count { num += 1 }
            if idx < grpT.count { num += 1 }
            if idx < grpR.count { num += 1 }
            if idx < grpH.count { num += 1 }
            if num == 0 { break }
            result += num == 4 ? 32 : num == 3 ? 27 : num == 2 ? 19 : 10
        }
        
        return result
    }
}
