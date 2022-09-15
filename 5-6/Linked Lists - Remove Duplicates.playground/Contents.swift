import UIKit

// Linked Lists - Remove Duplicates

class Node {
  var data: Int
  var next: Node?
  init(_ data: Int) {
    self.data = data
  }
}

func removeDuplicates(head: Node?) -> Node? {
  guard var node = head else { return nil }
  while let next = node.next {
    if node.data == next.data {
      node.next = next.next
    } else {
      node = next
    }
  }
  return head
}
