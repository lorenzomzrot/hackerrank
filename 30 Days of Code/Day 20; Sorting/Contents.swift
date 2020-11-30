import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var numberOfSwaps = 0

for _ in 0..<n {
    for index in 0..<n - 1 {
        if arr[index] > arr[index + 1] {
            arr.swapAt(index, index + 1)
            numberOfSwaps += 1
        }
    }

    if numberOfSwaps == 0 {
        break
    }
}

print("Array is sorted in \(numberOfSwaps) swaps.")
print("First Element: \(arr.first!)")
print("Last Element: \(arr.last!)")
