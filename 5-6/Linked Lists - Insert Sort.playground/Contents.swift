import UIKit

// Linked Lists - Insert Sort

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
    
    func collect() -> [Int] {
        return [data] + (next?.collect() ?? [])
    }
}

func insertSort(head: Node?) -> Node? {
    return head?.collect().reduce(nil, { sortedInsert($0, $1) })
}
