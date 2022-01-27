import UIKit

// Simple Fun #152: Invite More Women?. Swift

/*
 ([1, -1, 1]), true)
 ([-1, -1, -1]), false)
 ([1, -1]), false)
 ([1, 1, 1]), true)
 */

func inviteMoreWomen(_ arr: [Int]) -> Bool {
    let womenCount = arr.filter { $0 < 0 }.count
    let menCount = arr.filter { $0 > 0 }.count
    return womenCount >= menCount ? false : true
}

