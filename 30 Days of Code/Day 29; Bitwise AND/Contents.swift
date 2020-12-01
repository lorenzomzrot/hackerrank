import Foundation

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let nkTemp = readLine() else { fatalError("Bad input") }
    let nk = nkTemp.split(separator: " ").map{ String($0) }

    guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    var maximumBitwise = 0

    for i in 1...n {
        for j in 1..<i {
            let currentBitwise = i & j
            if currentBitwise < k && maximumBitwise < currentBitwise {
                maximumBitwise = currentBitwise
            }
        }
    }

    print(maximumBitwise)
}
