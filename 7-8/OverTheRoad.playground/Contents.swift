import UIKit

/*
 Over The Road. Swift
 
 You've just moved into a perfectly straight street with exactly n identical houses on either side of the road.
 Naturally, you would like to find out the house number of the people on the other side of the street. 
 */

func overTheRoad(address: Int, street: Int) -> Int {
    street * 2 + 1 - address
}
