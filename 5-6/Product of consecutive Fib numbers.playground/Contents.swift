import UIKit

// Product of consecutive Fib numbers

func productFib(_ prod: UInt64) -> (UInt64, UInt64, Bool) {
    var m: UInt64 = 0, n: UInt64 = 1
    while m * n < prod { (m, n) = (n, m + n) }
    return (m, n, m * n == prod)
}
