/*
 69. Sqrt(x)
 Solved
 Easy
 Topics
 Companies
 Hint
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
 You must not use any built-in exponent function or operator.
 For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
 Example 1:

 Input: x = 4
 Output: 2
 Explanation: The square root of 4 is 2, so we return 2.
 Example 2:

 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 */

func mySqrt(_ x: Int) -> Int {
        var start = 0
        var end = x
        var mid = 0
        var ans = 0

        while start <= end {
            mid = start + (end-start) / 2
            if mid * mid == x {
                return mid
            } else if mid * mid > x {
                end = mid - 1
            } else {
                ans = mid
                start = mid + 1
            }
        }
        return ans
    }