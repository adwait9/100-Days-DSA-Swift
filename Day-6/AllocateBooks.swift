/*
 Allocate Books
 Given an array of integers A of size N and an integer B.
 The College library has N books. The ith book has A[i] number of pages.
 You have to allocate books to B number of students so that the maximum number of pages allocated to a student is minimum.
 A book will be allocated to exactly one student.
 Each student has to be allocated at least one book.
 Allotment should be in contiguous order, for example: A student cannot be allocated book 1 and book 3, skipping book 2.
 Calculate and return that minimum possible number.
 NOTE: Return -1 if a valid assignment is not possible.
 Example Input
 Input 1:
 A = [12, 34, 67, 90]
 B = 2
 Input 2:
 A = [5, 17, 100, 11]
 B = 4
 Example Output
 Output 1:
 113
 Output 2:
 100
 Example Explanation
 Explanation 1:
 There are two students. Books can be distributed in following fashion :
 1)  [12] and [34, 67, 90]
     Max number of pages is allocated to student 2 with 34 + 67 + 90 = 191 pages
 2)  [12, 34] and [67, 90]
     Max number of pages is allocated to student 2 with 67 + 90 = 157 pages
 3)  [12, 34, 67] and [90]
     Max number of pages is allocated to student 1 with 12 + 34 + 67 = 113 pages
     Of the 3 cases, Option 3 has the minimum pages = 113.
 
 TC - n log S sum of all pages
 */

func books(_ A: inout [Int], _ B: inout Int) -> Int {
    let n = A.count
    guard n >= B else { return -1 }
    
    var low = A.max()!
    var high = A.reduce(0,+)
    var mid = 0
    var result = -1
    
    while low <= high {
        mid = low + (high - low) / 2
        
        if isPossible(A, &B, mid) {
            result = mid
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return result
    
}

func isPossible(_ A: [Int], _ B: inout Int, _ maxPages: Int) -> Bool {
    
    var pagesRead = 0
    var students = 1
    
    for i in 0..<A.count {
        if A[i] > maxPages {
            return false
        }
        if pagesRead + A[i] > maxPages {
            students += 1
            pagesRead = A[i]
        } else {
            pagesRead += A[i]
        }
    }
    
    return students <= B
}
