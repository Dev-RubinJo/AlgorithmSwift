import Foundation

let c = Int(readLine()!)!

for _ in 0 ..< c {
    let arr = readLine()!.components(separatedBy: " ").map { value in 
        return Double(value)!
    }
    var sum: Double = 0
    for i in 1 ..< Int(arr[0]) {
        sum += arr[i]
    }
    sum /= arr[0]
    var overAvr: Int = 0
    for i in 1 ..< Int(arr[0]) {
        if arr[i] > sum {
            overAvr += 1
        }
    }
    print(String(format: "%.3f", Double(overAvr) /  arr[0] * 100) + "%")
}
