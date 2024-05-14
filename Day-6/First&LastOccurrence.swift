/*
 Given a sorted array arr containing n elements with possibly some duplicate, the task is to find the first and last occurrences of an element x in the given array.
 Note: If the number x is not found in the array then return both the indices as -1.
 Example 1:
 Input:
 n=9, x=5
 arr[] = { 1, 3, 5, 5, 5, 5, 67, 123, 125 }
 Output:
 2 5
 Explanation:
 First occurrence of 5 is at index 2 and last occurrence of 5 is at index 5.
 Input:
 n=9, x=7
 arr[] = { 1, 3, 5, 5, 5, 5, 7, 123, 125 }
 Output:
 6 6
 Explanation:
 First and last occurrence of 7 is at index 6.
 */
    
func findFirstAndLastOccurence(n : Int, x: Int, arr: [Int]) -> (Int, Int) {
    var fnlo = (-1, -1)
    
    var start = 0
    var end = arr.count - 1
    
    //first occurence
    while start <= end {
        var mid = start + (end - start) / 2
        if arr[mid] == x {
            //probable ans
            fnlo.0 = mid
            //for first occurence need to check before the mid more occurences
            end = mid - 1
        } else if arr[mid] < x {
            //if mid values is less than the needed value start from the right of mid
            start = mid + 1
        } else {
            //if mid value is grater than the x, find in the left of mid
            end = mid - 1
        }
    }
    // last occurence
    start = 0
    end = arr.count - 1
    while start <= end {
        var mid = start + (end - start) / 2
        if arr[mid] == x {
            fnlo.1 = mid
            start = mid + 1
        } else if arr[mid] < x {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    
    return fnlo
}
var array = [ 1, 3, 5, 5, 5, 5, 7, 123, 125 ]
print(findFirstAndLastOccurence(n: 9, x: 7, arr: array))
