import UIKit

public func quickSort(_ a: [Int]) -> [Int] {
    
    guard a.count > 1 else { return a }

    let pivot = a[a.count / 2]
    
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}
