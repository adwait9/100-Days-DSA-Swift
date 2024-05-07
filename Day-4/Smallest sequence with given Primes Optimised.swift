// TC + O(D) SC = O(D)
func solve(_ A: inout Int, _ B: inout Int, _ C: inout Int, _ D: inout Int) -> [Int] {
    var result:[Int] = [1]
    var p1 = 0
    var p2 = 0
    var p3 = 0
    var num = 1
    while result.count < D + 1 {
        
        num = min(result[p1]*A, result[p2]*B, result[p3]*C)
        result.append(num)
        if num == result[p1]*A {
            p1 += 1
        }
        if num == result[p2]*B {
            p2 += 1
        }
        if num == result[p3]*C {
            p3 += 1
        }
    }
    result.removeFirst()
    return result
}
