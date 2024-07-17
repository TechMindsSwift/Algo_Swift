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
let input = readLine()!.split(separator: " ")
var dict1 = [Int: String]()
var dict2 = [String: Int]()
for i in 1...Int(input[0])! {
    let str = readLine()!
    dict1[i] = str
    dict2[str] = i
}
for i in 1...Int(input[1])! {
    let s = readLine()!
    if let a = Int(s) {
        print(dict1[a, default: ""])
    } else {
        print(dict2[s, default: 0])
    }
}

