 import Foundation

 var firstNameList = [String]()

 guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
 else { fatalError("Bad input") }

 for NItr in 1...N {
     guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
     let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }

     let firstName = firstNameEmailID[0]

     let emailID = firstNameEmailID[1]

     let range = NSMakeRange(0, emailID.count)
     let regex = try! NSRegularExpression(pattern: "[a-z]@gmail.com")

     if regex.firstMatch(in: emailID, range: range) != nil {
         firstNameList.append(firstName)
     }
 }

 for name in firstNameList.sorted() {
     print(name)
 }
