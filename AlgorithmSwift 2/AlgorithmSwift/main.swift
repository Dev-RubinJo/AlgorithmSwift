//
//  main.swift
//  AlgorithmSwift
//
//  Created by YooBin Jo on 2020/09/14.
//  Copyright © 2020 YooBin Jo. All rights reserved.
//

import Foundation

extension String {
    func indexNum(_ index: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: index)
    }
}

let tc = Int(readLine()!)!

for _ in 0 ... tc - 1 {
    let ox = readLine()!
    var answer = 0
    var stack = 1
    for i in 0 ... ox.count - 1 {
        if ox[ox.indexNum(i)] == "O" {
            answer += stack
            stack += 1
        } else {
            stack = 1
        }
    }
    print(answer)
}
