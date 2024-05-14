/*
 Single Number
 Programming
 Bit Manipulation
 Problem Description
 Given an array of integers A, every element appears twice except for one. Find that single one.
 NOTE: Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 Tc - O(N)
 */
func singleNumber(_ A: [Int]) -> Int {
        var num = 0
        for i in 0..<A.count {
            num = num ^ A[i]
        }
        return num
    }
