//
//  가운데 글자 가져오기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/06.
//

// 내 풀이

func solution1(_ s: String) -> String {
    // index 중간값 찾기
    let midIndex = s.index(s.startIndex, offsetBy: s.count / 2)
    if s.count % 2 != 0 {
        // 가운데 글자 return
        return String(s[s.index(midIndex, offsetBy: 0)])
    }
    else {
        // 가운데 두글자 return
        return String(s[s.index(midIndex, offsetBy: -1) ... midIndex])

    }
}







// 더 좋은 풀이

func solution2(_ s: String) -> String {
    // encodedOffset -> Swift5에서 Deprecated 및 utf16Offset 도입됨
    /*
        index 중간값을 찾기 위해 / 연산 시, 하나의 몫을 두 수가 보유
        e.g., 4, 5 -> 몫 2로 동일(4 / 2 == 5 / 2). 따라서
        홀수일 때 범위 : s[2 ... 2] -> 한글자 반환
        짝수일 때 범위 : s[1 ... 2] -> 두글자 반환
    */
    return String(s[String.Index(utf16Offset: (s.count - 1) / 2, in: s) ... String.Index(utf16Offset: s.count / 2, in: s)])
}
