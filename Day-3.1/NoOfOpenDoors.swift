func noOfOpenDoors(n: Int) -> Int{
    
    var count = 0
    
    for i in 1...n {
        var sqroot = Int(sqrt(Double(i)))
        if sqroot * sqroot == i {
            count += 1
        }
    }
    return count
}
