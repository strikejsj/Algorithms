//
//  K번째수.swift
//  
//
//  Created by Sungjin Jo on 2021/05/06.
//

import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    // answer
    var ans: [Int] = []
    
    // commands의 row 순환
    for i in 0 ..< commands.count {
        // subArray 추출
        let a: [Int] = Array(array[commands[i][0] - 1 ..< commands[i][1]])
        // 정렬 후 subArray의 K번째 수를 answer에 append
        ans.append(a.sorted()[commands[i][2] - 1])
    }
    
    return ans
}
