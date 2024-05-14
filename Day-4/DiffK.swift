
/*
 Diffk
 Two Pointers
 Problem Description
 Given an array 'A' of sorted integers and another non-negative integer B, find if there exist 2 indices i and j such that A[i] - A[j] = k, i != j.
 Return 0 / 1 ( 0 for false, 1 for true ) for this problem
 Try doing this in less than linear space complexity.
 Problem Constraints
 1 <= |A| <= 106
 0 <= B <= 109
 Input Format
 The first argument is an integer array A.
 The second argument is an integer B.
 Output Format
 Return an integer, 0 / 1 ( 0 for false, 1 for true ) for this problem
 */
func diffPossibleBF(_ A: inout [Int], _ B: inout Int) -> Int {
    
        for j in 0..<A.count {
            for i in j+1..<A.count {
                if A[i] - A[j] == B {
                    return 1
                }
            }
        }
        return 0
    }
//O(n) TC
func diffPossible(_ A: inout [Int], _ B: inout Int) -> Int {
        
        var p1 = 0, p2 = 1
        
        while p2 < A.count {
            if A[p2] - A[p1] == B {
                return 1
            } else if A[p2] - A[p1] < B {
                p2 += 1
            } else if A[p2] - A[p1] > B {
                p1 += 1
                if p1 == p2 {
                    p2 += 1
                }
            }
        }
        return 0
    }
