//
//  두 정수 사이의 합.swift
//  
//
//  Created by Sungjin Jo on 2021/05/21.
//

func solution(_ a:Int, _ b:Int) -> Int64 {
    var ans = 0
    let x = min(a, b), y = max(a, b)
    for i in x ... y {
        ans += i
    }
    return Int64(ans)
}
solution(a, b)








// 다른 풀이
// 현재 programmers에서 채점 시 시간초과남. map 이용
func solution2(_ a:Int, _ b:Int) -> Int64 {
    return Int64(Array(a < b ? a ... b : b ... a).reduce(0, +))
}
