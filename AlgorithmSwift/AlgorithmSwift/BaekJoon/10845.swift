import Foundation

let num = Int(readLine()!)!
var queue: [Int] = []
for _ in 0 ..< num {
    let command = readLine()!.components(separatedBy: " ")

    if command[0] == "push" {
        queue.append(Int(command[1])!)
    } else if command[0] == "pop" {
        if queue.count == 0 {
            print(-1)
        } else {
            print(queue[0])
            queue.remove(at: 0)
        }
    } else if command[0] == "size" {
        print(queue.count)
    } else if command[0] == "empty" {
        print(queue.count == 0 ? 1 : 0)
    } else if command[0] == "front" {
        print(queue.count != 0 ? queue.first! : -1)
    } else if command[0] == "back" {
        print(queue.count != 0 ? queue.last! : -1)
    }

}
