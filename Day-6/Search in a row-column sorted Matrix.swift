/*
 Search in a row-column sorted Matrix
 MediumAccuracy: 56.27%Submissions: 89K+Points: 4
 Given a matrix of size n x m, where every row and column is sorted in increasing order, and a number x. Find whether element x is present in the matrix or not.
 Example 1:
 Input:
 n = 3, m = 3, x = 62
 matrix[][] = {{ 3, 30, 38},
               {36, 43, 60},
               {40, 51, 69}}
 Output: 0
 Explanation:
 62 is not present in the matrix,
 so output is 0.
 Example 2:

 Input:
 n = 1, m = 6, x = 55
 matrix[][] = {{18, 21, 27, 38, 55, 67}}
 Output: 1
 Explanation: 55 is present in the matrix.
 
 TC - log n
 */

func search(matrix: [[Int]], x: Int ) -> String {
    
    var noOfrow = matrix.count
    var noOfcol = matrix[0].count
    
    var col = noOfcol - 1
    var row = 0
    
    while col >= 0 && row < noOfrow {
        if matrix[row][col] == x {
            return "\(x) is present in the matrix."
        } else if matrix[row][col] < x {
            row += 1
        } else {
            col -= 1
        }
    }
    return "Not Present"
}
let matrix = [[3, 30, 38],
               [36, 43, 60],
               [40, 51, 69]]

print(search(matrix: matrix, x: 40))
