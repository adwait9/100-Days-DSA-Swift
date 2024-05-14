/*
 Min XOR value
 Given an integer array A of N integers, find the pair of integers in the array which have minimum XOR value. Report the minimum XOR value.
 Input Format: First and only argument of input contains an integer array A
 Output Format: return a single integer denoting minimum xor value
 */

func findMinXor(_ A: inout [Int]) -> Int {
        var sortedA = A.sorted()
        var minXor = Int.max

        
        for i in 0..<A.count-1 {
            minXor = min(minXor, sortedA[i] ^ sortedA[i+1])
        }
        return minXor
    }
