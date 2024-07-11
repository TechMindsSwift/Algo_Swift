import Foundation
// 두 정수 사이의 합
// 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수,
// solution을 완성하세요.
// 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

func solution(_ a:Int, _ b:Int) -> Int64 {
    // min 값을 넣을 start 변수선언
    let start = Int64(min(a, b))
    // max 값을 넣을 end 변수선언
    let end = Int64(max(a, b))
    // 값을 모두 더할 sum 변수선언
    var sum: Int64 = 0

    // sum 변수에 모두 더하기
    for number in start...end {
        sum += number
    }
    // sum을 리턴
    return sum
    
}

