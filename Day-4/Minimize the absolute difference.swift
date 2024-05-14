/*
 Minimize the absolute difference
 Programming
 Two Pointers
 Medium
 58.9% Success

 61

 0

 Bookmark
 Asked In:
 Given three sorted arrays A, B  and Cof not necessarily same sizes.

 Calculate the minimum absolute difference between the maximum and minimum number from the triplet a, b, c such that a, b, c belongs arrays A, B, C respectively.

 i.e. minimize | max(a,b,c) - min(a,b,c) |.

 Example :

 Input:

 A : [ 1, 4, 5, 8, 10 ]
 B : [ 6, 9, 15 ]
 C : [ 2, 3, 6, 6 ]
 Output:

 1
 Explanation: We get the minimum difference for a=5, b=6, c=6 as | max(a,b,c) - min(a,b,c) | = |6-5| = 1.
 
 BF n3
 func solve(_ A: inout [Int], _ B: inout [Int], _ C: inout [Int]) -> Int {
         var ans  = Int.max
         for i in 0..<A.count {
             for j in 0..<B.count {
                 for k in 0..<C.count {
                     ans = min(ans, (max(A[i],B[j],C[k]) - min(A[i],B[j],C[k])))
                 }
             }
         }
         return ans
     }
 */
//TC - O(n + m + p)
func solve(_ A: inout [Int], _ B: inout [Int], _ C: inout [Int]) -> Int {
        var minDiff  = Int.max
        var i = 0, j = 0
        var k = 0
        
        while i < A.count && j < B.count && k < C.count {
            let minimum = min(A[i], B[j], C[k])
            let maximum = max(A[i], B[j], C[k])
            let currentDiff = maximum - minimum
            minDiff = min(minDiff, currentDiff)
            
            if A[i] == minimum {
                i += 1
            } else if B[j] == minimum {
                j += 1
            } else {
                k += 1
            }
        }
        return minDiff
    }
