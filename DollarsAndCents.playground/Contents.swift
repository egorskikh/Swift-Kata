import UIKit

/*
 Dollars and Cents. Swift.
 */

func formatMoney(_ val:Double) -> String {
  return String(format: "$%.2f", val)
}
