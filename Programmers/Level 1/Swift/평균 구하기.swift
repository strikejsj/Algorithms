//
//  평균 구하기.swift
//  
//
//  Created by Sungjin Jo on 2021/06/01.
//

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
