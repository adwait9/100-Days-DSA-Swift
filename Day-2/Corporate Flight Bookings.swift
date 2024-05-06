
import Foundation

/*
Q. 1 Corporate Flight Bookings
 There are n flights that are labeled from 1 to n.You are given an array of flight bookings bookings, where bookings[i] = [firsti, lasti,seatsi] represents a booking for flights firsti through lasti (inclusive) with seatsi seats reserved for each flight in the range.
 Return an array answer of length n, where answer[i] is the total number of seats reserved for flight i.

 Example 1:

 Input: bookings = [[1,2,10],[2,3,20],[2,5,25]], n = 5
 Output: [10,55,45,25,25]
 Explanation:
 Flight labels:        1   2   3   4   5
 Booking 1 reserved:  10  10
 Booking 2 reserved:      20  20
 Booking 3 reserved:      25  25  25  25
 Total seats:         10  55  45  25  25
 Hence, answer = [10,55,45,25,25]
 
 TC - 0(b*n)
 sC - o(1)
 BF :
 func corpFlightBookings(_ bookings: [[Int]], _ n: Int) -> [Int] {
         
         var ans = Array(repeating: 0, count: n)

         // for i in 0..<bookings.count {
         //     var start = bookings[i][0]
         //     var end = bookings[i][1]
         //     var seats = bookings[i][2]

         //     for j in start-1...end-1 {
         //         ans[j] += seats
         //     }
         // }
         for booking in bookings {
             for flight in booking[0]...booking[1] {
                 ans[flight-1] += booking[2]
             }
         }

         return ans
     }
 */
//TC - o(b) + o(n); o(max(b,n)) SC- o(n)
func corpFlightBookings(_ bookings: [[Int]], _ n: Int) -> [Int] {
        var ans = Array(repeating: 0, count: n)

        for booking in bookings {
            let start = booking[0]
            let end = booking[1]
            let seats = booking[2]

            ans[start-1] += seats
            if end != n {
                ans[end] -= seats
            }
        }
        //prefix sum for ans array
        for i in 1..<n {
            ans[i] += ans[i-1]
        }

        return ans
    }
