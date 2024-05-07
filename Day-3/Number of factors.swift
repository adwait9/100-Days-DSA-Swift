/*
 Number of factors
 Given a number N, find its number of factors.
 Input Format A single integer N
 Output Format An integer representing the number of factors
 Sample Input 0
 12
 Sample Output 0
 6
 Explanation 0
 12 has 6 factors: 1, 2, 3, 4, 6, 12
 var n = Int(readLine(strippingNewline: true)!)!
 */

func noOfFactors(n: Int) -> Int {
    
    let sqroot = Int(sqrt(Double(n)))

    var count = 0
    for i in 1...sqroot {
        if n % i == 0 {
            count += 2
        }
    }
    // find if factor
        if sqroot * sqroot == n {
            count -= 1
        }
    return count
}
