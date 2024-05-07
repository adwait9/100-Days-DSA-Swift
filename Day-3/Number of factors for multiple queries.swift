/*
  Number of factors for multiple queries
 Given Q numbers, for every number N find the number of factors.

 Input Format

 The first line contains an integer Q denoting the number of queries.
 Each of the subsequent Q lines contain an integer N.
 Constraints

 Q>0
 1 < N < 10000
 Output Format

 Print number of factors of each query separated by a space.

 Sample Input 0

 10
 45 678 2345 765 123 5656 9 1 12 889
 Sample Output 0

 6 8 8 12 4 16 3 1 6 4
 TC - rootN * q
*/
var q = Int(readLine(strippingNewline: true)!)!
var arr = readLine()!.components(separatedBy: " ").map{ (a: String)->(Int) in
    return Int(a)!
}
var result: [Int] = []
for i in 0..<q {
    let num = arr[i]
    var count = 0
    let sqroot = Int(sqrt(Double(num)))
    for j in 1...sqroot {
        if num % j == 0 {
            count += 2
        }
    }
    if sqroot * sqroot == num {
        count -= 1
    }
    print(count, terminator: " ")
}
