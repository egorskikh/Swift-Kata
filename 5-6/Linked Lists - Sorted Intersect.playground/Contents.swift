import UIKit

// Linked Lists - Sorted Intersect

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func SortedIntersect(first:Node?, second:Node?) -> Node? {
    
    guard first != nil && second != nil else {return nil}
    
    var first = first
    var second = second
    
    while (first?.data)! < (second?.data)! || (first?.data) == (first?.next?.data) {first = first?.next}
    while (second?.data)! < (first?.data)! || (second?.data) == (second?.next?.data) {second = second?.next}
    
    first?.next = SortedIntersect(first: first?.next, second: second?.next)
    
    return first
}
