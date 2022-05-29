import UIKit

// Flipping an Image. Swift.

/*
 Input: image = [[1,1,0],[1,0,1],[0,0,0]]
 Output: [[1,0,0],[0,1,0],[1,1,1]]
 */


func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var result = image
    
    let rows = result.count
    let cols = result.first?.count ?? 0
    
    if rows == 0 || cols == 0 { return result }
    
    for row in 0..<rows {
        var left = 0
        var right = result[row].count - 1
        
        while left < right {
            (result[row][left], result[row][right]) = (result[row][right], result[row][left])
            right -= 1
            left += 1
        }
        
        for idx in 0..<cols {
            result[row][idx] = result[row][idx] == 1 ? 0 : 1
        }
        
    }
    
    return result
}
