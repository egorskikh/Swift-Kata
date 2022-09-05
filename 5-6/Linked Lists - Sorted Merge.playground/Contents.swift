import UIKit

// Linked Lists - Sorted Merge

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

func sortedMerge(first:Node?, second:Node?) -> Node? {
    guard var a = first, var b = second else {
        return first ?? second
    }
    if a.data > b.data {
        (a, b) = (b, a)
    }
    return Node(a.data, next: sortedMerge(first: a.next, second: b))
}
