//
//  2016년.swift
//  
//
//  Created by Sungjin Jo on 2021/05/20.
//

func solution(_ a:Int, _ b:Int) -> String {
    // 요일 상수
    let days:[String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    // 2016년의 월별 일수
    let months:[Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    // 2016년 1월 1일 -> 금요일, days[5] == "FRI" -> 초기값 5로 세팅
    var day:Int = 5
    
    // a월 이전 달까지의 월별 일수 합산
    for i in 0 ..< a - 1 {
        day += months[i]
    }
    // a월에서 b만큼의 일수 합산
    day += b - 1
    
    // 해당되는 요일 계산
    return days[day % 7]
}
