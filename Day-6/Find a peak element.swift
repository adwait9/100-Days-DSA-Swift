/*
 Find a peak element
 Programming
 Binary Search
 Medium
 Asked In:
 Given an array of integers A, find and return the peak element in it.
 An array element is peak if it is NOT smaller than its neighbors.
 For corner elements, we need to consider only one neighbor.
 For example, for input array {5, 10, 20, 15}, 20 is the only peak element.
 Following corner cases give better idea about the problem.
 1) If input array is sorted in strictly increasing order, the last element is always a peak element.
 For example, 5 is peak element in {1, 2, 3, 4, 5}.
 2) If input array is sorted in strictly decreasing order, the first element is always a peak element.
 10 is the peak element in {10, 9, 8, 7, 6}.
 Note: It is guranteed that the answer is unique.

 */
// BF - TC - O(n)
func solveBF(_ A: inout [Int]) -> Int {
    // check cornor conditions first
    if A[0] > A[1] {
        return A[0]
    } else if A[A.count - 1] > A[A.count - 2] {
        return A[A.count - 1]
    } else {
        for i in 1..<A.count - 1{
            if A[i] >= A[i-1] && A[i] >= A[i+1] {
                return A[i]
            }
        }
    }
    return -1
}
// TC - O(logn)
func solve(_ A: inout [Int]) -> Int {
        
        var start = 0
        var end = A.count - 1
        
        while start < end {
            let mid = start + (end - start) / 2
            if A[mid] < A[mid+1] {
                start = mid + 1
            } else {
                end = mid
            }
        }
        return A[start]
    }

