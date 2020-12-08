import Foundation

extension String {
    func indexNum(_ index: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: index)
    }
}

let n = Int(readLine()!)!
let numbers = readLine()!
var ans: Int = 0

for i in 0 ..< n {
    ans += Int(numbers[numbers.indexNum(i)])!
}

print(ans)
