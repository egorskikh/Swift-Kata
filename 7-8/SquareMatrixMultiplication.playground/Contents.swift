import UIKit

/*
 Square Matrix Multiplication. Swift
 
 Write a function that accepts two square (NxN) matrices (two dimensional arrays), and returns the product of the two.
 Only square matrices will be given.

 How to multiply two square matrices:

 We are given two matrices, A and B, of size 2x2 (note: tests are not limited to 2x2). Matrix C, the solution,
 will be equal to the product of A and B. To fill in cell [0][0] of matrix C, you need to compute:
 A[0][0] * B[0][0] + A[0][1] * B[1][0].

 More general: To fill in cell [n][m] of matrix C,
 you need to first multiply the elements in the nth row of matrix A by the elements in the mth column of matrix B,
 then take the sum of all those products. This will give you the value for cell [m][n] in matrix C.
 */

func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    var returnArray = Array(repeating: Array(repeating: 0, count: a.count), count: a.count)
    
    for i in 0..<returnArray.count {
        
        for j in 0..<returnArray.count {
            var sum = 0
            
            for k in 0..<returnArray.count {
                sum += a[i][k] * b[k][j]
            }
            returnArray[i][j] = sum
        }
    }
    
    return returnArray
}
