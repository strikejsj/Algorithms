//
//  직사각형 별찍기.swift
//  
//
//  Created by Sungjin Jo on 2021/05/17.
//

import Foundation

/* e.g.,
 input : 5 3
 상수 a, b에 각각 받아옴
*/
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0 ..< b {
    print(String(repeating: "*", count: a))
}
