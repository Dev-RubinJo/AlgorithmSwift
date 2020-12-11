import Foundation

let tc = Int(readLine()!)!
for i in 0 ..< tc {
    let arr = readLine()!.components(separatedBy: " ").map { value in return Int(value)! }
    var result: Int = 1
    for _ in 0 ..< arr[1] {
        result = result * arr[0] % 10            
    }

    if result != 0 {
        print(result)
    } else {
        print(10)
    }
}
