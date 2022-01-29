import UIKit

// Mumbling. Swift.

/*
 accum("abcd") -> "A-Bb-Ccc-Dddd"
 accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
 accum("cwAt") -> "C-Ww-Aaa-Tttt"
 */

func accum(_ s: String) -> String {
    return s.enumerated().map { repeatElement(String($1), count: $0 + 1).joined().capitalized }.joined(separator: "-")
}

accum("cwAt")
