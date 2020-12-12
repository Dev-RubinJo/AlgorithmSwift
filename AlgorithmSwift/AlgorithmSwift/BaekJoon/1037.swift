import Foundation

let number = Int(readLine()!)!

var arr = readLine()!.components(separatedBy: " ").map { value in return Int(value)! }
arr.sort()

let result = arr.first! * arr.last!
print(result)

