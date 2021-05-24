//
//  핸드폰 번호 가리기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/24.
//

func solution(_ phone_number:String) -> String {
    // sufix : 뒤에서 ~자리만 뽑아옴 <-> prefix
    return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
    // 또는 아래와 같이 작성 가능ㅎ
    //return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4)))")
}
