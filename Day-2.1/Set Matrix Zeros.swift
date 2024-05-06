/*
 Set Matrix Zeros
 Problem Description
 Given a matrix, A of size M x N of 0s and 1s. If an element is 0, set its entire row and column to 0.
 Note: This will be evaluated on the extra memory used. Try to minimize the space and time complexity.
 Problem Constraints
 1 <= N, M <= 1000
 0 <= A[i][j] <= 1
 Input Format
 The first and the only argument of input contains a 2-d integer matrix, A, of size M x N.
 Output Format
 Return a 2-d matrix that satisfies the given conditions.
 Example Input
 Input 1:
 [   [1, 0, 1],
     [1, 1, 1],
     [1, 1, 1]   ]
 Input 2:
 [   [1, 0, 1],
     [1, 1, 1],
     [1, 0, 1]   ]


 Example Output
 Output 1:
 [   [0, 0, 0],
     [1, 0, 1],
     [1, 0, 1]   ]
 Output 2:
 [   [0, 0, 0],
     [1, 0, 1],
     [0, 0, 0]   ]
 */

func setZeroes(arr: inout [[Int]]) -> [[Int]] {
    let rows = arr.count
    let cols = arr[0].count
    var zeroCoordinates = [(Int, Int)]()
    for i in 0..<rows {
        for j in 0..<cols {
            if arr[i][j] == 0 {
                zeroCoordinates.append((i, j))
            }
        }
    }
    
    for (row, col) in zeroCoordinates {
        //set entire row to zero
        for j in 0..<cols {
            arr[row][j] = 0
        }
        //set entire col to zero
        for i in 0..<rows {
            arr[i][col] = 0
        }
    }
    
}
var inputArr = [[1,0,1],[1,1,1],[1,1,1]]
print(inputArr)
print(setZeroes(arr: &inputArr))
