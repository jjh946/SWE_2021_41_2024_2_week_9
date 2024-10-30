from typing import List

def twoSum(nums: List[int], target: int) -> List[int]:
    # 해시맵을 이용해 값을 빠르게 찾기 위한 접근 방식
    num_map = {}
    for i, num in enumerate(nums):
        complement = target - num
        # 현재 숫자의 보충 값이 이미 해시맵에 존재하면 인덱스를 반환
        if complement in num_map:
            return [num_map[complement], i]
        # 현재 숫자를 해시맵에 저장
        num_map[num] = i
    return []