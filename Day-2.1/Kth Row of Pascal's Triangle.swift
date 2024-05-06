/*
 Kth Row of Pascal's Triangle
 Programming

 Problem Description

 Given an index k, return the kth row of the Pascal's triangle.
 Pascal's triangle: To generate A[C] in row R, sum up A'[C] and A'[C-1] from previous row R - 1.

 Example:

 Input : k = 3


 Return : [1,3,3,1]

 Note: k is 0 based. k = 0, corresponds to the row [1].

 Note: Could you optimize your algorithm to use only O(k) extra space?
 */

func getRow(_ A: inout Int) -> [Int] {
        // var triangle: [[Int]] = []
        // for i in 0..<A+1 {
        //     var row: [Int] = []
        //     for j in 0...i {
        //         if j == 0 || j == i {
        //             row.append(1)
        //         } else {
        //             row.append(triangle[i-1][j-1] + triangle[i-1][j])
        //         }
                
        //     }
        //     triangle.append(row)
        //     if( i == A) {
        //         return row
        //     }
        // }
        // return []
        
        var row = Array(repeating: 0, count: A+1)
        row[0] = 1
    
        for i in 1...A {
            //compute each element in row using prev row
            for j in stride(from: i, to: 0, by: -1) {
                row[j] += row[j-1]
            }
        }
        return row
    }
