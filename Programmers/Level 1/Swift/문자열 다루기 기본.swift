//
//  문자열 다루기 기본.swift
//  
//
//  Created by Sungjin Jo on 2021/05/06.
//

func solution(_ s:String) -> Bool {
    // 문자열 길이가 4 or 6이고 숫자로만 구성되어 있는가? T/F
    if (s.count == 4 || s.count == 6) && (s == s.filter{ $0.isNumber }) {
        return true
    }
    else {
        return false
    }
}
