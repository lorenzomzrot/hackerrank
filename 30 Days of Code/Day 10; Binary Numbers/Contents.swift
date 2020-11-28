import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var actualResult = 0

var possibleResult = 0 {
    willSet {
        actualResult = newValue > actualResult ? newValue : actualResult
    }
}
for digit in String(n, radix: 2) {
        possibleResult = digit == "1" ? possibleResult + 1 : 0
}

print(actualResult)
