//
//  체육복.swift
//  
//
//  Created by Sungjin Jo on 2021/05/21.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // 분실자 중에 여벌 보유자가 있는 경우 제외
    var setLost = lost.filter{ !reserve.contains($0) }
    // 여벌 보유자 중에 분실자 있는 경우 제외
    var setReserve = reserve.filter{ !lost.contains($0) }
    
    for i in setReserve {
        /* e.g.,
         reserve = [1, 3, 5], lost = [2]라면
         i == reserve[0] 일 때
         */
        // 1 이전 번호(0 != lost[0], 없음)가 lost 목록에 있으면
        if setLost.contains(i - 1) {
            // lost에서 제거
            setLost.remove(at: setLost.firstIndex(of: i - 1)!)
        }
        // 1 다음 번호(2 == lost[0], 있음)가 lost 목록에 있으면
        else if setLost.contains(i + 1) {
            // lost에서 제거
            setLost.remove(at: setLost.firstIndex(of: i + 1)!)
        }
    }

    // 전체 인원수에서 여벌을 주고도 존재하는 분실자 수를 뺌
    return n - setLost.count
}
