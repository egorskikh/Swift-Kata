import UIKit

// John and Ann sign up for Codewars

func johnAndAnn(_ n: Int) -> ([Int],[Int]) {
    var john = Array.init(repeating: 0, count: n)
    var ann = Array.init(repeating: 1, count: n)
    for i in 1..<n {
        john[i] = i-ann[john[i-1]]
        ann[i] = i-john[ann[i-1]]
    }
    return (john,ann)
}

func ann(_ n : Int) -> [Int] {
    return johnAndAnn(n).1
}

func john(_ n : Int) -> [Int] {
    return johnAndAnn(n).0
}

func sumJohn(_ n : Int) -> Int {
    return john(n).reduce(0, +)
}

func sumAnn(_ n : Int) -> Int {
    return ann(n).reduce(0, +)
}
