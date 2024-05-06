/*
 Water trapped
 Given an integer array A of non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
 Problem Constraints
 1 <= |A| <= 100000
 Input Format
 The only argument given is integer array A.
 Output Format
 Return the total water it is able to trap after raining.
 Example Input
 Input 1:

  A = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
 Input 2:

  A = [1, 2]

 Example Output
 Output 1:

  6
 Output 2:

  0
 
 TC = o(3n) Sc = o(2n)

 */

func trap(_ A: [Int]) -> Int {
        var n = A.count
        var maxR = Array(repeating: 0, count: n)
        var maxL = Array(repeating: 0, count: n)
        maxL[0] = A[0]
        maxR[n-1] = A[n-1]
        var waterTrap = 0
        
        for i in 1..<n {
            maxL[i] = max(maxL[i-1], A[i])
        }
        for i in (0..<n-1).reversed() {
            maxR[i] = max(maxR[i+1], A[i])
        }
        
        for i in 0..<n{
            waterTrap += max(0, min(maxL[i], maxR[i]) - A[i])
        }
        return waterTrap
    }
/* SPACE COMPLEXITY : o(1)
 var tallestHeight = A[0], tallestIndex = 0
        
        for (index, num) in A.enumerated() {
            if num > tallestHeight {
                tallestHeight = num
                tallestIndex = index
            }
        }
        
        var waterTrap = 0, tallestLeft = 0, tallestRight = 0
        
        for i in 0..<tallestIndex {
            tallestLeft = max(tallestLeft, A[i])
            waterTrap += tallestLeft - A[i]
        }
        //for i in stride(from: A.count - 1, through: tallestIndex + 1, by: -1) {}
        for i in (tallestIndex..<A.count).reversed() {
            tallestRight = max(tallestRight, A[i])
            waterTrap += tallestRight - A[i]
        }
        
        return waterTrap
 */
