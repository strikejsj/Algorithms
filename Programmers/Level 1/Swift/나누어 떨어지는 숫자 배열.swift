//
//  나누어 떨어지는 숫자 배열.swift
//  
//
//  Created by Sungjin Jo on 2021/05/10.
//

func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    let ans: [Int] = arr.filter{ $0 % divisor == 0 }.sorted()
    return ans == [] ? [-1] : ans
}
