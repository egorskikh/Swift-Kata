import UIKit

/*
 Easy wallpaper. Swift.
 */

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    return l*w*h == 0 ? "zero" : numbers[Int((l * 2 + w * 2) / 0.52 * h / 10 * 1.15) + 1]
}
