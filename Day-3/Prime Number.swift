/*
 Prime Numbers
 Given a number A, find all prime numbers up to A (A included).
 Make sure the returned array is sorted.
 
 BF : nrootn
 func sieve(_ A: inout Int) -> [Int] {
         var result: [Int] = []
         for num in 2...A {
             var isPrime = true
             for i in 2..<rootnum {
                 if num % i == 0 {
                     isPrime = false
                     break
                 }
             }
             if isPrime {
                 result.append(num)
             }
         }
         return result
     }

 sieve
 tc o(nlog(logn))
 sc n
 */
func sieve(_ A: inout Int) -> [Int] {
    var primes: [Bool] = Array(repeating: true, count: A+1)
    var result: [Int] = []
    primes[0] = false
    primes[1] = false
    
    for i in 2...A {
        if primes[i] {
            result.append(i)
            var j = i * i
            while j <= A {
                primes[j] = false
                j += i
                
            }
        }
    }
    
    
    return result
    
}
