import Foundation

let n = Int(readLine()!)!
var dp: [Int] = [0]
var wines: [Int] = [0]

for _ in 0 ..< n {
    wines.append(Int(readLine()!)!)
}

dp.append(wines[1])

if n > 1 {
    dp.append(wines[1] + wines[2])
}

for i in 3 ... n {
    dp.append(max(dp[i - 1], dp[i - 3] + wines[i - 1] + wines[i], dp[i - 2] + wines[i]))
}
print(dp[n])
