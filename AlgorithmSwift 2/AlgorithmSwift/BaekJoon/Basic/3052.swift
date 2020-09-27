import Foundation
var a: Set<Int> = []
for _ in 0 ..< 10 {
    a.insert(Int(readLine()!)! % 42)
}

print(a.count)