import UIKit

// PI approximation

func iterPi(_ epsilon: Double) -> (Int, String) {
    var pi = 1.0, i = 0
    
    while abs(Double.pi - 4 * pi) > epsilon {
        i += 1
        pi += ( pow(Double(-1), Double(i)) / Double(2*i + 1) )
    }
    
    return ( i + 1, String(format: "%.10f", pi * 4) )
}
