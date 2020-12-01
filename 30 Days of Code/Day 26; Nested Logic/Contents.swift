import Foundation

// Enter your code here
let actuallyDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var actuallyDay = actuallyDate[0]
var actuallyMonth = actuallyDate[1]
var actuallyYear = actuallyDate[2]

let expectedDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var expectedDay = expectedDate[0]
var expectedMonth = expectedDate[1]
var expectedYear = expectedDate[2]

var fine: Int

if actuallyYear < expectedYear {
    fine = 0
} else if actuallyYear == expectedYear {
    if actuallyMonth < expectedMonth {
        fine = 0
    } else if actuallyMonth == expectedMonth {
        if actuallyDay <= expectedDay {
            fine = 0
        } else {
            fine = 15 * (actuallyDay - expectedDay)
        }
    } else {
        fine = 500 * (actuallyMonth - expectedMonth)
    }
} else {
    fine = 10000
}

print(fine)
