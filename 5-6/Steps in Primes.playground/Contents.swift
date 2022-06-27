import UIKit

// Steps in Primes. Swift.

func isPrime(_ num: Int) -> Bool {
    if (num == 1) {
        return false
    }
    for  i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) {
            return false
        }
    }
    return true
}

func step(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    var prevPrimes : [Int] = []
    for num in m...n {
        if isPrime(num) {
            for prevPrime in prevPrimes {
                if (num - prevPrime == g) {
                    return (prevPrime, num)
                }
            }
            prevPrimes.append(num)
        }
    }
    return nil
}
