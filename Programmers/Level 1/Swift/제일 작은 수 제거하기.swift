//
//  제일 작은 수 제거하기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/16.
//

func solution(_ arr:[Int]) -> [Int] {
    /*
     parameter는 기본적으로 constant이므로 var로 받음.
     직접 변경하려는 경우,
     1. parameter의 arr:[Int]를 arr:inout [Int]로 변경
     2. 호출 시 solution(a)가 아닌 solution(&a)로 호출
     하면 변수 생성 없이 직접 parameter 수정 가능.
     */
    var ans:[Int] = arr
    
    // Force-unwrap using '!' to abort execution if the optional value contains 'nil'
    ans.remove(at: arr.firstIndex(of: arr.min()!)!)
    return arr.count == 1 ? [-1] : ans
}
