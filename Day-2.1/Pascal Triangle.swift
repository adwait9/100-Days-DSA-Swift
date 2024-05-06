/*
 Pascal Triangle
 Problem Description
 Given an integer A, equal to numRows, generate the first numRows of Pascal's triangle.
 Pascal's triangle: To generate A[C] in row R, sum up A'[C] and A'[C-1] from the previous row R - 1.

 Input Format
 The first argument is an integer A, equal to the numRows.
 Output Format
 Return an array of array of integers, equal to pascal triangle.
 Example Input
 A = 5
 Example Output
 [
      [1],
      [1,1],
      [1,2,1],
      [1,3,3,1],
      [1,4,6,4,1]
 ]
 */

func generate(_ numRows: Int) -> [[Int]] {
        var triangle: [[Int]] = []

        for i in 0..<numRows {
            var row: [Int] = []
            for j in 0...i {
                if j == 0 || j == i {
                    row.append(1)
                } else {
                    row.append(triangle[i-1][j-1] + triangle[i-1][j])
                }
            }
            triangle.append(row)
        }
        return triangle
    }
