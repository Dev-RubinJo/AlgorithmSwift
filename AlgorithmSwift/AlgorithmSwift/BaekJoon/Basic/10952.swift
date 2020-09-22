import Foundation
var temp = 0
repeat {
    let ab = readLine()!.components(separatedBy: " ").map { value in return Int(value)! }.reduce(0, +)
    if ab != 0 {
        print(ab)
    }
    temp = ab
} while temp > 0