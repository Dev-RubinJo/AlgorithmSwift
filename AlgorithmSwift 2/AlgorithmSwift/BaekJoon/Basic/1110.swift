import Foundation

let nowValue = Int(readLine()!)!
var afterValue = nowValue
var count = 0
repeat {
    let ten = afterValue / 10
    let one = afterValue % 10
    let sumValue = (ten + one) % 10
    afterValue = one * 10 + sumValue
    count += 1
} while nowValue != afterValue
print(count)