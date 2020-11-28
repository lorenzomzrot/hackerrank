// Enter your code here. Read input from STDIN. Print output to STDOUT
var phoneBook = [String: Int]()
let n = Int(readLine()!)!

for _ in 1...n {
    let contact = readLine()!.split(separator: " ")
    phoneBook[String(contact[0])] = Int(contact[1])
}

var queryName = readLine()

while queryName != nil {
    if let number = phoneBook[queryName!] {
        print("\(queryName!)=\(number)")
    }
    else {
        print("Not found")
    }

    queryName = readLine()
}
