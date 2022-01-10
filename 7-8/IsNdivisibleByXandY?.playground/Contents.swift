/*
 Swift.

 Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.
 */

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}
