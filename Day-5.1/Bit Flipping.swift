/*
 Bit Flipping
 Given an integer A.
 Write binary representation of the integer without leading zeros.
 Flip all bits then return the integer value of the binary number formed.
 Flipping means 0 -> 1 and 1 -> 0.
 Problem Constraints
 1 <= A <= 109
 Input Format
 Given an integer A.
 Output Format
 Return an integer.

 */
 
func solve(_ A: inout Int) -> Int {
        var bitCount = 0
        var num = A
        //calculate number of bits for representing A
        while num > 0 {
            bitCount += 1
            num >>= 1
        }
        //create mask with all bits set to 1 upto highest bit position of A
        let mask = (1 << bitCount) - 1
        let flippedValue = A ^ mask
        return flippedValue
    }
