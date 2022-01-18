import UIKit

// Buying a car. Swift

func nbMonths(_ startPriceOld: Int,
              _ startPriceNew: Int,
              _ savingPerMonth: Int,
              _ percentLossByMonth: Double) -> (Int, Int) {
    
    if startPriceOld >= startPriceNew { return (0, (startPriceOld - startPriceNew))}
    
    var old = Double(startPriceOld)
    var new = Double(startPriceNew)
    var percent = 1.0 - (percentLossByMonth / 100.0)
    var savings = 0.0
    var month = 0
    
    while (old+savings) < new {
        old *= percent
        new *= percent
        savings += Double(savingPerMonth)
        percent -= (month%2==0 ? 0.005 : 0)
        month += 1
    }
    
    return (month,Int((savings+old-new).rounded()))
}
