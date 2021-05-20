//
//  두 개 뽑아서 더하기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/21.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var ans:[Int] = []
    for i in 0 ..< numbers.count - 1 {
        for j in i + 1 ..< numbers.count {
            ans.append(numbers[i] + numbers[j])
            print(ans)
        }
    }
    // Set -> 중복 제거 후 배열로 변환(Set은 index가 없음)
    return Array(Set(ans).sorted())
}
