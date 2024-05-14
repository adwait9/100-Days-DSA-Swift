/*
 Pairs With Given Xor
 Problem Description
 Given an 1D integer array A containing N distinct integers.
 Find the number of unique pairs of integers in the array whose XOR is equal to B.
 NOTE:
 Pair (a, b) and (b, a) is considered to be same and should be counted once.
 */
// TC - n2
func solveBF(_ A: inout [Int], _ B: inout Int) -> Int {
        var count = 0
        for i in 0..<A.count {
            for j in i+1..<A.count {
                if A[i] ^ A[j] == B {
                    count += 1
                }
            }
        }
        return count
    }
//TC - n
func solve(_ A: inout [Int], _ B: inout Int) -> Int {
        var count = 0
        var setX: Set<Int> = []
        for num in A {
            if !setX.contains(num) {
                setX.insert(num)
            }
        }
        for num in A {
            if setX.contains((num ^ B)) {
                count += 1
            }
        }
        return count / 2
    }
