//
//  자연수 뒤집어 배열로 만들기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/24.
//

func solution(_ n:Int64) -> [Int] {
    // inout 사용 못하므로 Int형변환해 변수로 저장
    var a:Int = Int(n)
    var ans:[Int] = []
    while a != 0 {
        // 나머지를 순서대로 넣고
        ans.append(a % 10)
        // 몫을 줄여줌
        a /= 10
    }
    
    return ans
}







// 다른 풀이
func solution2(_ n:Int64) -> [Int] {
    /*
     "\(n)" == String(n)
     compactMap : not nil인 경우에 사용. Array로 만들어줌
     hexDigitValue : char형을 Int?로 변환해줌
     */
    return "\(n)".compactMap{ $0.hexDigitValue }.reversed()
}
