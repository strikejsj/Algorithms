//
//  x만큼 간격이 있는 n개의 숫자.swift
//  
//
//  Created by Sungjin Jo on 2021/06/18.
//

func solution(_ x:Int, _ n:Int) -> [Int64] {
    // n만큼의 인덱스를 가지는 배열 생성 후 map으로 인덱스별 대입
    return Array(1...n).map{Int64($0 * x)}
}
