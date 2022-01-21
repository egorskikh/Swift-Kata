import UIKit

// Is It Negative Zero (-0)?. Swift.
func isNegativeZero(_ n: Float) -> Bool {
    return n.sign == FloatingPointSign.minus && n == 0
}
