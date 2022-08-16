import UIKit

// Linked Lists - Merge Sort. Swift.

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func mergeSort(_ list:Node?) -> Node? {
    guard let _ = list, let _ = list!.next else {
        return list
    }
    var left: Node?, right: Node?
    try! frontBackSplit(source: list, front: &left, back: &right)
    return sortedMerge(first: mergeSort(left), second: mergeSort(right))
}
