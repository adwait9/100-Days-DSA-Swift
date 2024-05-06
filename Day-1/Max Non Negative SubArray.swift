/* Q.4
 Max Non Negative SubArray
 Programming
 Arrays
 Easy
 14.9% Success
 Problem Description

 Given an array of integers, A of length N, find out the maximum sum sub-array of non negative numbers from A.
 The sub-array should be contiguous i.e., a sub-array created by choosing the second and fourth element and skipping the third element is invalid.
 Maximum sub-array is defined in terms of the sum of the elements in the sub-array.
 Find and return the required subarray.
 NOTE:
 If there is a tie, then compare with segment's length and return segment which has maximum length.
 If there is still a tie, then return the segment with minimum starting index.
 */

func maxset(_ A: inout [Int]) -> [Int] {
       var currSum = 0, currLen = 0
       var maxSum = 0, maxLen = 0
       var startIndex = -1, endIndex = -1
       
       for i in 0..<A.count {
           if A[i] >= 0 {
               currSum += A[i]
               currLen += 1
               
               if currSum > maxSum || (currSum == maxSum && currLen > maxLen) {
                   maxSum = currSum
                   maxLen = currLen
                   startIndex = i - currLen + 1
                   endIndex = i
               }
           } else {
               currSum = 0
               currLen = 0
           }
       }
       return startIndex == -1 ? [] : Array(A[startIndex...endIndex])
    }
