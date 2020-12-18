import Foundation

let tc = Int(readLine()!)!

for _ in 0 ..< tc {
    let ab = readLine()!.components(separatedBy: ",").map { value in return Int(value)! }
    print(ab[0] + ab[1])
}
