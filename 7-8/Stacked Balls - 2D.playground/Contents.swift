import UIKit

// Stacked Balls - 2D. Swift.

func stackHeight2D(_ layers: Int) -> Double {
    return layers > 0 ?
    3.0.squareRoot() * (Double(layers) - 1) / 2 + 1
    :
    0
}
