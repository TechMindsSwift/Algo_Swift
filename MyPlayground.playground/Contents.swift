import Foundation
// 두 정수 사이의 합
// 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수,
// solution을 완성하세요.
// 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

func solution(_ a:Int, _ b:Int) -> Int64 {
    // 값을 저장할 temp 변수 선언
    var temp: Int64 = 0
    // min 값을 저장할 minA 변수 선언
    var minA: Int64 = Int64(min(a,b))
    // max 값을 저장할 maxA 변수 선언
    var maxB: Int64 = Int64(max(a,b))
 
    // temp는 min부터 max 까지의 값을 모두 더한다
    for index in minA...maxB {
        temp += index
    }
    // 모두 더한 temp 값을 반환
    return Int64(temp)
}

var sol: Int = 0
sol = Int(solution(2, 5))
print(sol)
