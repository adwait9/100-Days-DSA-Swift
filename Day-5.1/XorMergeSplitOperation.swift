/*
 You have an array A[] with N elements. We have 2 types of operations available on this array:
 We can split a element B into 2 elements C and D such that B = C + D.
 We can merge 2 elements P and Q as one element R such that R = P^Q i.e XOR of P and Q.
 You have to determine whether it is possible to make array A[] containing only 1 element 0 after several splits and/or merge?
 Input Format
 The first line contains an integer N, the number of elements in array A.
 The next line contains N space-separated integers, denoting values of A[i].
 Constraints
 1 ≤ N ≤ 100000
 1 ≤ A[i] ≤ 106
 Output Format
 Print Yes if it is possible otherwise return No.
 Sample Input 0
 2
 9 17
 Sample Output 0
 Yes
 Explanation 0
 Following is one possible sequence of operations -
 1) Merge i.e 9 XOR 17 = 24
 2) Split 24 into two parts each of size 12
 3) Merge i.e 12 XOR 12 = 0
 As there is only 1 element i.e 0. So it is possible.
 let n = Int(readLine(strippingNewline: true)!)!
 var arr = readLine()!.components(separatedBy: " ").map{ (a: String)->(Int) in
     return Int(a)!
 }

 */
func xorMergeSplitOperation(_ A: [Int]) {
    var xorSum = 0
    for num in A {
        xorSum ^= num
    }
    if xorSum % 2 == 0 {
        print("Yes")
    } else {
        print("No")
    }
}
xorMergeSplitOperation([9, 17])
