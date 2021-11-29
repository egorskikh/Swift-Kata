/*
 Maximum Multiple. Swift.
 
 Given a Divisor and a Bound , Find the largest integer N ,
 Such That ,
 
 Conditions :
 N is divisible by divisor
 
 N is less than or equal to bound
 
 N is greater than 0.
 */

func maxMultiple(_ d: Int, _ b: Int) -> Int {
    return b - (b % d)
}
