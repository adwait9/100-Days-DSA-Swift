
/* Q.2
Adding One to Number Represented as
 Array of Digits
 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant tto least significant in left-to-right order. The large integer does not contain any leading 0's.
 Increment the large integer by one and return the resulting array of digits.

 Example 1:

 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].
 
 Explanation:
 The function increments a large number represented as a vector of its
 digits. It starts by removing any leading zeros, then adds one to the number
 from the least significant digit, handling carry as it propagates towards the
 most significant digit. If there is still a carry after the last digit, a new digit is
 added at the beginning.

 Why it works:
 The algorithm correctly handles carries, which is crucial for arithmetic
 operations on numbers represented as digit arrays. It incrementally
 updates the array from the least to the most significant digit, ensuring that
 all intermediate states are correct.
 Time Complexity: O(n), where n is the number of digits. Most of the time,
 only one pass through the array is needed.
 Space Complexity: O(1), aside from the space needed for input.
 */
import foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var carry = 1
    for i in (0..<digits.count).reversed() {
        digits[i] += carry
        carry = digits[i] / 10
        digits[i] %= 10
    }
    if carry == 1 {
        digits.insert(1, at: 0)
    }
    return digits
}
var digits = [1,2,3]
print(plusOne(digits))
