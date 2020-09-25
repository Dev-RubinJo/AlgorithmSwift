import Foundation

var time = readLine()!.components(separatedBy: " ").map { (value: String) -> Int in return Int(value)! }
var h = time[0]
var m = time[1]

m -= 45
if m < 0 {
    h -= 1
    m += 60
    if h < 0 {
        h += 24
    }
}

print(h, m)