import UIKit

// Steps in k-primes. Swift.

func primeFactors(_ n: Int) -> Int {
    var nb = n
    var i = 2
    var cnt = 0
    while nb > 1 {
        while nb % i == 0 {
            cnt += 1
            nb /= i
        }
        i += 1
    }
    return cnt
}
func kprimesStep(_ k: Int, _ step: Int, _ m: Int, _ n: Int) -> [(Int, Int)]? {
    var res = [(Int, Int)]()
    var i = m
    while i <= n - step {
        if primeFactors(i) == k && primeFactors(i + step) == k {
            res.append((i, i + step))
        }
        i += 1
    }
    if res.count == 0 {return nil} else {return res};
}

