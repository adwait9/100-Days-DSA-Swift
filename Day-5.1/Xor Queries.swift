/*
 Xor Queries
 You are given an array (containing only 0 and 1) as elements of N length. Given L and R, you need to determine value of XOR of all elements from L to R (both inclusive) and number of unset bits (0's) in the given range of the array.
 Input Format
 The first line contains an integer N, number of elements in the array.
 The second line contains N space-separated integers, denoting elements of array.
 The third line contains an integer Q, number of queries.
 Each of the next Q lines contain 2 integers, representing L and R for each query.
 Constraints
 1 ≤ N ≤ 100000
 1 ≤ Q ≤ 100000
 1 ≤ L ≤ R ≤ N
 Output Format
 Print a 2D array of Q rows and 2 columns i.e the xor value and number of unset bits in that range respectively for each query.
 Sample Input 0
 5
 1 0 0 0 1
 3
 2 4
 1 5
 3 5
 Sample Output 0
 0 3
 0 3
 1 2
 Explanation 0
 In the given case the bit sequence is of length 5 and the sequence is 1 0 0 0 1.
 For query 1 the range is (2,4), and the answer is (array[2] xor array[3] xor array[4]) = 0, and number of zeroes are 3, so output is 0 3. Similarly for other queries.

 */

//func readIntegers() -> [Int] {
//    return readLine()!.split(separator: " ").map { Int($0)! }
//}
//let n = Int(readLine()!)!
//let array = readIntegers()
//let q = Int(readLine()!)!
//var queries: [(Int, Int)] = []

//for _ in 0..<q {
//    let query = readIntegers()
//    queries.append((query[0], query[1]))
//}
func calcualteXorAndUnsetBits(_ array: [Int], _ queries: [(Int, Int)]) {
    for (L, R) in queries {
        let start = L - 1
        let end = R - 1
        var xorSum = 0
        var numOfZeroes = 0
        if start>=0 && end<array.count {
            for i in start...end {
                xorSum ^= array[i]
                if array[i] == 0 {
                    numOfZeroes += 1
                }
            }
            print(xorSum, numOfZeroes, separator: " ")
        }
    }
}
