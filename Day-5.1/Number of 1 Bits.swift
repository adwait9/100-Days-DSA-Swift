/*
 Number of 1 Bits
 Write a function that takes an integer and returns the number of 1 bits it has.
 Problem Constraints
 0 <= A <= 4294967295
 Input Format
 First and only argument contains integer A
 Output Format
 Return an integer as the answer
 Example Input
 Input1:
     11
 Example Output
 Output1:
 3
 */

func oneBitCount(_ A: Int) -> Int {
    
    var num = A
    var count = 0
    
    while num > 0 {
        count += num & 1
        num >>= 1
    }
    return count
}
print(oneBitCount(11))
