/*
 Swift.

 In this kata you get the start number and the end number of a region and should return
 the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
 */

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    return (start...end).filter { !String($0).contains("5") }.count
}


