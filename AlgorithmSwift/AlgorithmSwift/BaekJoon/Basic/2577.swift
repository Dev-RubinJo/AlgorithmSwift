import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let abc = String(a * b * c)
var answer = [Int](repeating: 0, count: 10)
for i in abc {
    answer[Int(String(i))!] += 1
}

for i in answer {
    print(i)
}