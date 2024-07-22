//
//  main.swift
//  1weeks
//
//  Created by 김정원 on 7/17/24.
//

import Foundation

//let input = Int(readLine()!)!
//let str = readLine()!.split(separator: "*")// ["a", "d"]
//
//var re = ""
//for _ in 1...input {
//    var check = false
//    let com = readLine()! // abcd
//    if str[0].count + str[1].count > com.count {
//        print("NE")
//        continue
//    }
//    if com.prefix(str[0].count) == str[0] {
//        if com.suffix(str[1].count) == str[1] {
//            print("DA")
//            continue
//        }
//    }
//    print("NE")
//}
//짝지어 제거하기
//func solution(_ s:String) -> Int{
//    
//    var st:[Character] = []
//     
//    for i in s {
//        if st.last == i {
//            st.popLast()
//        } else {
//            st.append(i)
//        }
//
//    }
//     
//    return st.isEmpty ? 0 : 1
//}
//solution("baabaa")

//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    let sqrtN = Int(sqrt(Double(yellow)))
//    var arr: [(Int,Int)] = []
//    for i in 1...sqrtN {
//        if yellow.isMultiple(of: i) {
//            arr.append((i, yellow / i)) // 약수 넣음
//        }
//    }
//    for i in arr {
//        if (i.0 + 2) * (i.1 + 2) == brown + yellow {
//            return [i.1 + 2, i.0 + 2]
//        }
//    }
//    return []
//}
//print(solution(10, 2))

// 점프와 순간이동
//import Foundation
//
//func solution(_ n:Int) -> Int
//{
//    var ans = 1
//    var n = n
//    while n > 1 {
//        if !n.isMultiple(of: 2) {
//            ans += 1
//        }
//        n /= 2
//    }
//    
//    return ans
//}
//print(solution(5000))

// 멀리 뛰기
//func solution(_ n:Int) -> Int {
//    var dp = Array(repeating: 0, count: n + 1)
//    dp[1] = 1
//    dp[2] = 2
//    if n > 2 {
//    for i in 3...n {
//        dp[i] = (dp[i - 1] + dp[i - 2]) % 1234567
//    }
//    }
//    return dp[n]
//}
//print(solution(1))

// 영어 끝말잇기

//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    var w:[String] = []
//    var a = 0
//    var cycle = 0
//    var num = 0
//    var pre = "\(words[0].first!)"
//    for (index,element) in words.enumerated() {
//       
//        if w.contains(element) || pre.last != element.first {
//            a = index + 1
//            if a % n == 0 { // a = 9 일때는  3 3.
//                num = n
//                cycle = a / n
//                
//            } else { // a 가 10 일때는 1 4
//                cycle = (a / n) + 1
//                num = a % n
//            }
//            return [num, cycle]
//        }
//       
//        w.append(element)
//        pre = element
//    }
//    return [0,0]
//}
//print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

// 예상 대진표

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var (left,right) = (min(a,b),max(a,b))
    if right - left == 1 && right / 2 > left / 2{
        return 1
    }
    while left < right {
        left = left % 2 == 0 ? left / 2 : (left / 2) + 1
        right = right % 2 == 0 ? right / 2 : (right / 2) + 1
        answer += 1
    }
    
    return answer
}
print(solution(8, 7, 8))
