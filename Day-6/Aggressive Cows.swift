/*
 Aggressive Cows
 You are given an array 'arr' consisting of 'n' integers which denote the position of a stall.
 You are also given an integer 'k' which denotes the number of aggressive cows.
 You are given the task of assigning stalls to 'k' cows such that the minimum distance between any two of them is the maximum possible.
 Print the maximum possible minimum distance.
 Example:
 Input: 'n' = 3, 'k' = 2 and 'arr' = {1, 2, 3}
 Output: 2
 Explanation: The maximum possible minimum distance will be 2 when 2 cows are placed at positions {1, 3}. Here distance between cows is 2.
 */

func aggressiveCows(_ arr: [Int], _ cowsK: Int) -> Int {
    var stallsArr = arr
    var low = 0
    var high = stallsArr.count - 1
    var mid = 0
    var result = 0
    
    while low <= high {
        mid = low + (high - low) / 2
        if isKPossible(stallsArr, cowsK, mid) {
            result = mid
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return result
    
}
func isKPossible(_ stallsArr: [Int], _ cowsK: Int, _ distance: Int) -> Bool {
    var dist = 0
    var stalls = stallsArr
    var lastStall = stalls[0]
    var cowsPlaced = 1
    
    for i in 1..<stalls.count {
        dist = stalls[i] - lastStall
        if dist >= distance {
            cowsPlaced += 1
            lastStall = stalls[i]
        }
    }
    return cowsPlaced >= cowsK
}
var arr = [4, 2, 1, 3, 6]
print(aggressiveCows(arr, 2))
