import Foundation

let n = readLine()
var arr = readLine()!.components(separatedBy: " ").map { value in return             Int(value)! }

arr.insert(0, at: 0)
var answer: [Int] = [Int](repeating: 0, count: arr.count - 1)

for index in (1 ... arr.count - 1) {
    let limit = arr[index] >= arr[index - 1] ? answer[index - 1] : index - 1
    for i in (0 ... limit).reversed() {
        if arr[i] > arr[index] {
            answer[index] = i
            break
        } else {
            answer[index] = 0
        }
    }
}

for i in 1 ..< arr.count {
    print(answer[i], terminator: " ")
}

