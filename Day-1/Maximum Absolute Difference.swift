/* Q.3
 Maximum Absolute Difference
 Programming
 Arrays
 Medium
 32.7% Success

 You are given an array of N integers, A1, A2 ,..., AN. Return maximum value of f(i, j) for all 1 ≤ i, j ≤ N. f(i, j) is defined as |A[i] - A[j]| + |i - j|, where |x| denotes absolute value of x.
 From this, it becomes clear that finding the maximum and minimum values
 for A[i] + i and A[i] - i separately will cover all cases, reducing the problem
 to computing these maxima and minima.
 Why it works:
 This method works because it consolidates the complexity of comparing
 every possible pair by transforming the problem into a simpler form where
 you only need to find extremes (maximum and minimum values) and then
 compute their differences. This exploits the distributive properties of
 maxima and minima over addition and subtraction, substantially simplifying
 the computation.
 Time Complexity: O(n), where n is the length of the array. This is because
 the array is traversed a constant number of times (specifically, four times).
 Space Complexity: O(n), for storing the transformed arrays B and C.


 */
func maxArr(_ A: inout [Int]) -> Int {
    //     var max = 0
        
    //     for i in 0..<A.count {
    //         for j in 0..<A.count {
    //             let result = abs(A[i] - A[j]) + abs(i-j)
    //             if result > max {
    //                 max = result
    //             }
    //         }
    //     }
    //     return max
    // }
    
    var max1 = Int.min
    var max2 = Int.min
    var min1 = Int.max
    var min2 = Int.max
    
    for i in 0..<A.count {
        max1 = max(max1, A[i] + i)
        min1 = min(min1, A[i] + i)
        max2 = max(max2, A[i] - i)
        min2 = min(min2, A[i] - i)
    }
    
    return max(max1-min1, max2-min2)
}
