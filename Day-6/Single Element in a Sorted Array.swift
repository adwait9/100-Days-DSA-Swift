/*
 540. Single Element in a Sorted Array
 You are given a sorted array consisting of only integers where every element appears exactly twice, except for one element which appears exactly once.
 Return the single element that appears only once.
 Your solution must run in O(log n) time and O(1) space.
 Example 1:
 Input: nums = [1,1,2,3,3,4,4,8,8]
 Output: 2
 Example 2:
 Input: nums = [3,3,7,7,10,11,11]
 Output: 10
 BF - o(n)
 for i in stride(from: 0, to: nums.count - 1, by: 2){
 if nums[i] != nums[i+1] {
     return nums[i]
 }
}
return nums[nums.count - 1]
 TC - log n SC - 1
 */
func singleNonDuplicate(_ nums: [Int]) -> Int {
        var start = 0
        var end = nums.count - 1

        while start < end {
            var mid = start + (end - start) / 2
            // if mid is odd
            if mid % 2 == 1 {
                // compare [mid] & [mid-1], if equal SE lies right of mid else left of mid
                if nums[mid] == nums[mid - 1] {
                    start = mid + 1
                } else {
                    end = mid - 1
                }
            } else {    // if mid is even; compare [mid] & [mid+1], if equal SE lies right of mid+1 else left of mid
                if nums[mid] == nums[mid + 1] {
                    start = mid + 2
                } else {
                    end = mid
                }
            }
        }
        return nums[start]
    }
