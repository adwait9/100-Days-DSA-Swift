/*
 Spiral Order Matrix I
 Programming
 Arrays
 Easy
 Problem Description
 Given a matrix of M * N elements (M rows, N columns), return all elements of the matrix in spiral order.
Problem Constraints
 1 <= M, N <= 1000
 Input Format
 The first argument is a matrix A.
 Output Format
 Return an array of integers representing all elements of the matrix in spiral order.
 TC = o(m*n)
 SC = o(1)

 */

func spiralOrder(_ A: [[Int]]) -> [Int] {
    
    var result:[Int] = []
    
    var top = 0
    var bottom = A.count - 1
    var left = 0
    var right = A[0].count - 1
    
    while top <= bottom && left <= right {
        //traverse from left to right
        for i in stride(from: left, to: right + 1, by: 1) {
            result.append(A[top][i])
        }
        top += 1
        //traverse from top to bottom
        for i in stride(from: top, to: bottom + 1, by: 1) {
            result.append(A[i][right])
        }
        right -= 1
        //traverse from right to left
        if top <= bottom {
            for i in stride(from: right, to: left - 1, by: -1) {
                result.append(A[bottom][i])
            }
        }
        bottom -= 1
        //traverse from bottom to top
        if left <= right {
            for i in stride(from: bottom, to: top - 1, by: -1) {
                result.append(A[i][left])
            }
        }
        left += 1
    }
    return result
}
