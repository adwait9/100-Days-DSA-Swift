func primeFactorisationOptimised(N : inout Int) {
    var num = 2
    while num <= N {
        if N % num == 0 {
            print(num)
            N = N / num
        } else {
            num += 1
        }
    }
}
