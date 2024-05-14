*
 Sum of pairwise Hamming Distance
 Problem Description
 Hamming distance between two non-negative integers is defined as the number of positions at which the corresponding bits are different.
 Given an array A of N non-negative integers, find the sum of hamming distances of all pairs of integers in the array. Return the answer modulo 1000000007.


 */

func calcHD(_ num1: Int, _ num2: Int) -> Int {
    var distance = 0
    var xorResult = num1 ^ num2
    
    while xorResult > 0 {
        distance += xorResult & 1
        xorResult >>= 1
    }
    return distance * 2
}
//TC - o(n2)
func hammingDistanceBF(_ A: [Int]) -> Int {
    
    var sum = 0
    for i in 0..<A.count {
        for j in i+1..<A.count {
            sum += calcHD(A[i], A[j])
        }
    }
    return sum
    
}
// TC -o(n)
func hammingDistance(_ A: [Int]) -> Int {
    
    var sum = 0
    let n = A.count
    
    for i in 0..<32 {
        var countSetBits = 0
        for num in A {
            if (num >> i) & 1 == 1 {
                countSetBits += 1
            }
        }
        let countUnsetBits = n - countSetBits
        sum += (countSetBits * countUnsetBits) % 1000000007
    }
    return  ( sum * 2 ) % 1000000007
    
    
}
