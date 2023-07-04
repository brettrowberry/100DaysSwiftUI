import Cocoa

enum SqrtError : Error {
    case outOfBounds
    case noRoot
}

func mySqrt(_ x : Int) throws -> Int {
    if x < 1 || x > 10_000 { throw SqrtError.outOfBounds }
    
    var sqrt = -1
        
    for i in 1...10_000 {
        if x == (i * i) {
            sqrt = i
            break }}
    
    if sqrt == -1 { throw SqrtError.noRoot }
    else { return sqrt }
}

//try! mySqrt(-1) //outOfBounds
try! mySqrt(10_000)
//try! mySqrt(10_001) //outOfBounds
//try! mySqrt(9_999) //noRoot
