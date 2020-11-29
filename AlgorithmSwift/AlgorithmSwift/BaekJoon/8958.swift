import Foundation

extension String {
    func indexNum(_ index: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: index)
    }
}

let tc = Int(readLine()!)!

for _ in 0 ..< tc {
    let ox = readLine()!
    var answer = 0
    var stack = 1
    for i in 0 ..< ox.count {
        if ox[ox.indexNum(i)] == "0" {
            answer += stack
            stack += 1
        } else {
            stack = 1
        }
        print(answer)
    }
}
