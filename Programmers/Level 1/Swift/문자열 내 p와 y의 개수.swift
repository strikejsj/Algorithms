//
//  문자열 내 p와 y의 개수.swift
//  
//
//  Created by Sungjin Jo on 2021/05/20.
//

func solution(_ s:String) -> Bool {
    // p, y 개수 담을 변수
    var pCount = 0, yCount = 0
    // 소문자로 변환해 배열로 저장
    let arr = Array(s.lowercased())
    // linear search로 p와 y를 찾을 때마다 개수 count
    for i in 0 ..< arr.count {
        if arr[i] == "p" {
            pCount += 1
        }
        else if arr[i] == "y" {
            yCount += 1
        }
    }

    return pCount == yCount ? true : false
}







// 다른 풀이

import Foundation // components ⊂ Foundation framework

func solution(_ s:String) -> Bool
{
    // 소문자 변환
    let str:String = s.lowercased()
    /* e.g.,
     str = "pPoooyY"
     str.components(separatedBy: "p") -> ["", "", "oooyy"] -> count : 3
     str.components(separatedBy: "y") -> ["ppooo", "", ""] -> count : 3
     
     문자열 쪼갤 때
     split 또는 components 사용.
     split가 성능이 더 좋고, swift 표준 라이브러리에 포함되어 있음. [Substring] 형태로 return.
     components는 Foundation 프레임워크에 포함. [String] 형태로 return.
     */
    return str.components(separatedBy: "p").count == str.components(separatedBy: "y").count
}
