import UIKit

// Strong Number (Special Numbers Series #2)

// 1! + 4! + 5! = 1 + 24 + 120 = 145

func strongNumber(_ number: Int) -> String {
    let string = "\(number)"
        .map { stride(from: 1,
                      to: Int("\($0)")! + 1, by: 1)
            .map({$0})
            .reduce(1, *) }
        .reduce(0, +)
    return string == number ? "STRONG!!!!" : "Not Strong !!"
}

strongNumber(145)
