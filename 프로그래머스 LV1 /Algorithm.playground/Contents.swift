import Foundation

// 문자열 내 p와 y 의 개수
/*
func solution(_ s:String) -> Bool {
    return s.filter {$0 == "p" || $0 == "P"}.count == s.filter {$0 == "y" || $0 == "Y"}.count ? true : false
}
*/

// 자릿수 더하기

//func solution(_ n:Int) -> Int
//{
//    return String(n).reduce(0){ result, char in
//        return result + Int("\(char)")!
//    }
//}

// 자연수 뒤집어 배열로 만들기

//func solution(_ n: Int64) -> [Int] {
//    return String(n).reversed().map { Int(String($0))! }
//}

// 정수 내림차순으로 배치하기
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(n).sorted(by: >).map {String($0)}.joined())!
//}
//print(solution(118372))

// 정수 제곱근 판별
//func solution(_ n:Int64) -> Int64 {
//    let t = Int64(sqrt(Double(n)))
//    return t * t == n ? (t+1)*(t+1) : -1
//}

// 평균구하기
//func solution(_ arr:[Int]) -> Double {
//    return Double(arr.reduce(0,+)) / Double(arr.count)
//}

// 하샤드 수 구하기

//func solution(_ x:Int) -> Bool {
//    return x % String(x).map{Int(String($0))!}.reduce(0,+) == 0 ? true : false
//}


// x 만큼 간격이 있는 n 개의 숫자
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    return (1...n).map{Int64($0 * x)}
//}

// 두 정수 사이의 합
//func solution(_ a: Int, _ b: Int) -> Int {
//    return (a...b).reduce(0,+)
//}

// 나머지가 1이 되는 수 찾기
//func solution(_ n:Int) -> Int {
//    var num: Int = 0
//    for i in 1...n {
//        if n % i == 1 {
//            num = i
//            break
//        }
//    }
//    return num
//}
// 음양 더하기
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//   
//    return (0..<absolutes.count).map{ signs[$0] ? absolutes[$0] : absolutes[$0] * -1 }.reduce(0,+)
//}

//없는 숫자 더하기
//func solution(_ num:Int) -> Int {
//    var count = 0
//    var n = num
//    while(n != 1 && count < 500) {
//        n = n.isMultiple(of: 2) ? n / 2 : (n * 3) + 1
//        count += 1
//    }
//    return count == 500 ? -1 : count
//}
//print(solution(6))
let number1 = Int.random(in: 2...9)
let number2 = Int.random(in: 1...9)
var correct = number1 * number2


var answer = [number1 * number2, ]

1. number1 , number2 를 랜덤으로 생성한다.
2. 객관식 보기 배열을 만든다. // 버튼생성 
3. 객관식 보기 배열 만들기 [number1 *number2 , Int.random(in: 2...81), Int.random(in: 2...81)]
4. 선택된 것과 정답인 것이 맞다면 맞음 카운트를 증가시킨다. (오답이면 틀림 카운트 증가 )
5. 버튼이 선택될 때마다 객관식 보기를 shuffle 해준다.
