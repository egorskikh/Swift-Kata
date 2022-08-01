import UIKit

// Help your granny!

func tour(_ friends: [String], _ friendsTowns: [String: String], _ dist: [String: Double]) -> Int {
    
    let validFriends = friends.filter { return friendsTowns[$0] != nil }
    
    var total: Double = dist[friendsTowns[validFriends.first!]!]! + dist[friendsTowns[validFriends.last!]!]!
    
    for i in 0...validFriends.count-2 {
        let a = dist[friendsTowns[validFriends[i]]!]!
        let b = dist[friendsTowns[validFriends[i+1]]!]!
        total += (b * b - a * a).squareRoot()
        
    }
    
    return Int(total)
}
