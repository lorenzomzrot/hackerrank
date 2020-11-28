import Foundation

let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    return arrRow
}

guard arr.count == 6 else { fatalError("Bad input") }

var maximumSum = -9 * 7

for i in 1...4 {
    for j in 1...4 {
        var currentSum = arr[i][j]
        currentSum += arr[i - 1][j - 1] + arr[i - 1][j] + arr[i - 1][j + 1]
        currentSum += arr[i + 1][j - 1] + arr[i + 1][j] + arr[i + 1][j + 1]
        if currentSum > maximumSum {
            maximumSum = currentSum
        }
    }
}

print(maximumSum)
