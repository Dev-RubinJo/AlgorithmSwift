import Foundation

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    @discardableResult public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr = self
        return AnyIterator {
            return curr.pop()
        }
    }
}

let n = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map { value in return             Int(value)! }

var tower = Stack<[Int]>()

for i in 0 ..< n {
    let height = arr[i]
    while !tower.isEmpty && tower.top![1] <= height {
        tower.pop()
    }
    
    if tower.isEmpty {
        print("0", terminator: " ")
    } else {
        print(tower.top![0], terminator: " ")
    }
    
    tower.push([i + 1, height])
}
