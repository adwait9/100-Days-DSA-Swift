/*
 Majority Element
 Programming
 Greedy Algorithm
 Given an array of size N, find the majority element. The majority element is the element that appears more than floor(N/2) times.
 You may assume that the array is non-empty and the majority element always exist in the array.
 */
//TC o(nlogn)
func majorityElement(_ A: [Int]) -> Int {
        //BF - o(n*n)
        // for num in A {
        //     var count = 0
        //     for otherNum in A {
        //         if num == otherNum {
        //             count += 1
        //         }
        //     }
        //     if count > A.count / 2 {
        //         return num
        //     }
        // }
        // return 0
    
    
//        let n = A.count
//        var sorted = A.sorted()
//        return sorted[n/2]
    //o(n) TC MOoores voting
    //candidate will give me max occurence in array
    var candidate = -1, count = 0
    for num in A {
        if count == 0 {
            candidate = num
            count += 1
        } else {
            if candidate == num {
                count += 1
            } else {
                count -= 1
            }
        }
    }
    count = 0
    for num in A {
        if num == candidate {
            count += 1
        }
    }
    if count > A.count / 2 {
        return candidate
    } else {
        return -1
    }
    
}
