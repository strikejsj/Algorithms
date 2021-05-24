//
//  수박수박수박수박수박수?.swift
//  
//
//  Created by Sungjin Jo on 2021/05/25.
//

// 내 풀이
func solution(_ n:Int) -> String {
    return n % 2 == 0 ? String(repeating: "수박", count: n / 2) : (n > 2 ? "수" + String(repeating: "박수", count: n / 2) : "수")
}







// 더 좋은 풀이
func solution2(_ n:Int) -> String {
    // n <= 2인 값이 오면 count = 0이 되는 경우를 이용
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
