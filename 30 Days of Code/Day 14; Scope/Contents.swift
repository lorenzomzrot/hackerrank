import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
    }

    func computeDifference() {
        var minimumElement = elements.first!
        var maximumElement = elements.first!

        for element in elements {
            if element < minimumElement {
                minimumElement = element
            }
            if element > maximumElement {
                maximumElement = element
            }
        }

        maximumDifference = maximumElement - minimumElement
    }
    
} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
