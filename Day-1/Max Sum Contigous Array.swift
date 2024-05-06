

import Foundation
/*  Q.1  Max Sum Contiguous Subarray

 Arrays
 Find the contiguous subarray within an array, A of length N which has the largest sum.
 Problem Constraints
 1 <= N <= 106
 -1000 <= A[i] <= 1000
 Example Input
 Input 1:
 A = [1, 2, 3, 4, -10]
 Input 2:
 A = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
 
 Explanation:
 The function increments a large number represented as a vector of its
 digits. It starts by removing any leading zeros, then adds one to the number
 from the least significant digit, handling carry as it propagates towards the
 most significant digit. If there is still a carry after the last digit, a new digit is
 added at the beginning.

 Why it works:
 The algorithm correctly handles carries, which is crucial for arithmetic
 operations on numbers represented as digit arrays. It incrementally
 updates the array from the least to the most significant digit, ensuring that
 all intermediate states are correct.
 Time Complexity: O(n), where n is the number of digits. Most of the time,
 only one pass through the array is needed.
 Space Complexity: O(1), aside from the space needed for input.
 */
func maxSubArray(_ A: [Int]) -> Int {
    var sum = A[0], maxSum = A[0]
    
    for i in 1..<A.count {
        sum = max(A[i], A[i] + sum)
        maxSum = max(maxSum, sum)
    }
    return maxSum
}

var A = [ -10, -2]
print(maxSubArray(A))
