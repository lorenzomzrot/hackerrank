import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for number in 1...10 {
    print("\(n) x \(number) = \(n * number)")
}
