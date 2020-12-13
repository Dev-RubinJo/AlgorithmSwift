import Foundation

var stack: [Int] = []

let count = Int(readLine()!)!

for _ in 0 ..< count {
    let command = readLine()!.components(separatedBy: " ")

    if command[0] == "push" {
        stack.append(Int(command[1])!)
    } else if command[0] == "top" {
        print(stack.last!)
    } else if command[0] == "size" {
        print(stack.count)
    } else if command[0] == "pop" {
        if stack.count == 0 {
            print(-1)
        } else {
            print(stack.last!)
            stack.popLast()
        }
    } else if command[0] == "empty" {
        print(stack.count == 0 ? 1 : 0)
    }
}
