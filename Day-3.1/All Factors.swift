/*
 All Factors
 Given a number A, find all factors of A.
 Problem Constraints
 1 <= A <= 109
 Input Format
 The first argument is an integer A.
 Output Format
 Return an array of all factors of A.
 Example Input
 A = 6
 Example Output
 [1, 2, 3, 6]
 Example Explanation
 For the given A = 6, its factors are 1, 2, 3, and 6, hence returning an array of them.
 tc o(sqrt(n))
 */
func allFactors(_ A: inout Int) -> [Int] {
        
        var sqroot = Int(sqrt(Double(A)))
        var result:[Int] = []
        for i in 1...sqroot {
            if A % i == 0 {
                result.append(i)
                //ensures quotient is also added to factors, before only divisors were added
                if i != A / i {
                    result.append(A / i)
                }
            }
        }
        return result.sorted()
    }
