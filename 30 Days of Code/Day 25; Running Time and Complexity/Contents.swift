import Foundation

// Enter your code here
func isPrime(_ n: Int) -> Bool {
    let squareRoot = Int(sqrt(Double(n)))

    if squareRoot >= 2 {
        for current in 2...squareRoot {
            if n % current == 0 {
                return false
            }
        }
    } else if n == 1 {
        return false
    }

    return true
}

let number = Int(readLine()!)!

for _ in 0..<number {
    let n = Int(readLine()!)!

    if isPrime(n) {
        print("Prime")
    } else {
        print("Not prime")
    }
}
