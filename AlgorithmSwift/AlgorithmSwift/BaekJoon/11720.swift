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
    let number = numbers[numbers.indexNum(i)]
    ans += Int(String(number))!
}

print(ans)
