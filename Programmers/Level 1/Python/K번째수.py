def solution(arr, cmds):
    answer = []
    for i, j, k in cmds:
        # subArray 추출
        temp = arr[i-1:j]
        temp.sort()
        # 정렬 후 subArray의 K번째 수를 answer에 append
        answer.append(temp[k-1])
    return answer