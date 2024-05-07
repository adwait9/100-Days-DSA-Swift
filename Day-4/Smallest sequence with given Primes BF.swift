/*
 Smallest sequence with given Primes
 Given three prime numbers A, B and C and an integer D.
 You need to find the first(smallest) D integers which only have A, B, C or a combination of them as their prime factors.
 Input Format
 First argument is an integer A.

 Second argument is an integer B.

 Third argument is an integer C.

 Fourth argument is an integer D.
 Output Format
 Return an array of size D denoting the first smallest D integers which only have A, B, C or a combination of them as their prime factors.
 NOTE: You need to return the array sorted in ascending order.
 Example Input
 Input 1:
  A = 2
  B = 3
  C = 5
  D = 5
 Example Output
 Output 1:

  [2, 3, 4, 5, 6]
 BF - TC - o(D*logn)
 */
func solveBF(_ A: inout Int, _ B: inout Int, _ C: inout Int, _ D: inout Int) -> [Int] {
    
    
    var result: [Int] = []
    var num = 2
    let factors = [A, B, C]
    
    while result.count < D {
        
        if hasOnlyFactors(num, factors) {
            result.append(num)
        }
        num += 1
    }
    return result
}

func hasOnlyFactors(_ num: Int, _ factors: [Int]) -> Bool {
    var n = num
    for factor in factors {
        while n % factor == 0 {
            n = n / factor
        }
    }
    return n == 1
}
