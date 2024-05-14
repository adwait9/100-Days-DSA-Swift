/*
 Single Number II
 Programming
 Bit Manipulation
 Given an array of integers, every element appears thrice except for one, which occurs once.
  Find that element that does not appear thrice.
  NOTE: Your algorithm should have a linear runtime complexity.
  Can you implement it without using extra memory?
 */
func singleNumberBF(_ A: [Int]) -> Int {
        for i in 0..<A.count {
            var count = 0
            for j in 0..<A.count {
                if A[i] == A[j] {
                    count += 1
                }
            }
            if count == 1 {
                return A[i]
            }
        }
        return -1
    }
func singleNumberII(_ A: [Int]) -> Int {
        var arr = Array(repeating: 0, count: 32)
        for i in 0..<32 {
            var countSetBits = 0
            for num in A {
                if (num >> i) & 1 == 1 {
                    countSetBits += 1
                }
            }
            arr[i] = countSetBits
        }
        
        var ans = 0
        for i in 0..<32 {
            if arr[i] % 3 != 0 {
                ans += Int(pow(2, Double(i)))
            }
        }
        return (ans)
        
        
    }
