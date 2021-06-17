//
//  정수 제곱근 판별.swift
//  
//
//  Created by Sungjin Jo on 2021/06/04.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let ans = Int64(sqrt(Double(n)))
    // return n == Int64(pow(Double(ans), 2)) ? Int64(pow(Double(ans) + 1, 2)) : -1
    // 간단하게 정리하면
    return n == ans * ans ? (ans + 1) * (ans + 1) : -1
}
