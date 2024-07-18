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

// 1620
//let input = readLine()!.split(separator: " ")
//var dict1 = [Int: String]()
//var dict2 = [String: Int]()
//for i in 1...Int(input[0])! {
//    let str = readLine()!
//    dict1[i] = str
//    dict2[str] = i
//}
//for i in 1...Int(input[1])! {
//    let s = readLine()!
//    if let a = Int(s) {
//        print(dict1[a, default: ""])
//    } else {
//        print(dict2[s, default: 0])
//    }
//}
//

// 9375
//let t = Int(readLine()!)!
//for _ in 1...t {
//    var dict = [String: Int]()
//    let num = Int(readLine()!)!
//    for _ in 1...num {
//        let input = readLine()!.split(separator: " ")
//        dict[String(input[1]), default: 1] += 1
//    }
//    print(dict.map{$0.value}.reduce(1,*) - 1)
//}

// 1213 팰린드롬 만들기
let input = readLine()!.sorted()
let alphapet = (65...90).map{String(UnicodeScalar($0))}
var dict = (65...90).map{String(UnicodeScalar($0))}.reduce(into: [String: Int]()) { result ,num in
    result["\(num)"] = 0
}
for i in input {
    dict["\(i)" , default: 0] += 1 // 계산 완료
}
var re = ""
var left = ""
var right = ""
for i in alphapet {
    if let cnt = dict[i] {
        switch cnt {
        case 1:
            re += i
        case cnt.isMultiple(of: 2):
            
            
        }
    }
    
}



