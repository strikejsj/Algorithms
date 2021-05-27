//
//  행렬의 덧셈.swift
//  
//
//  Created by Sungjin Jo on 2021/05/27.
//

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var ans:[[Int]] = []
    /* e.g.,
     arr1 = [[1, 2], [2, 3]], arr2 = [[3, 4], [5, 6]] 이면
     i == [1, 2] ...
     j == [3, 4] ...
     */
    // two variables in for loop (python과 동일)
    for (i, j) in zip(arr1, arr2) {
        // 배열 형태(e.g., [1, 2] or [1], [2])에 상관없이 담을 임시배열 생성
        var temp:[Int] = []
        // l == 1 ...
        // k == 3 ...
        for (l, k) in zip(i, j) {
            // temp == [1 + 3, 2 + 4] ...
            temp.append(l + k)
        }
        // ans == [[4, 6], ...]
        ans.append(temp)
    }
    return ans
}









// 더 좋은 풀이
func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    /*
     zip이 두 개의 시퀀스로 시퀀쓰 쌍을 만들어 return하는 것을 이용 -> zip(a, b)가 하나의 array가 됨
     zip으로 만든 배열에 map 이용 -> 덧셈을 반영한 배열로 변환
     */
    return zip(arr1, arr2).map{ zip($0, $1).map{$0 + $1} }
}
