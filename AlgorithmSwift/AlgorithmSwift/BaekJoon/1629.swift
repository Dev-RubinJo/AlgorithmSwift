import Foundation

func power(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if b == 1 {
        return a % c
    } else {
        let temp = power(a, b / 2, c)
            if b % 2 == 0 {
                return temp * temp % c
            } else {
                return (temp * temp % c) * a % c
            }
    }
}

let abc = readLine()!.components(separatedBy: " ").map { value in return Int(value)! }

let a = abc[0]
let b = abc[1]
let c = abc[2]

print(power(a, b, c))
