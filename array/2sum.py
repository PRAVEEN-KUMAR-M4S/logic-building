# // Example 1:

# // Input: nums = [2,7,11,15], target = 9
# // Output: [0,1]
# // Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# // Example 2:

# // Input: nums = [3,2,4], target = 6
# // Output: [1,2]
# // Example 3:

# // Input: nums = [3,3], target = 6
# // Output: [0,1]


class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        seen = {}
        
        for i, num in enumerate(nums):
            complement = target - num
            
            if complement in seen:
                return [seen[complement], i]
                
            seen[num] = i

# --- Example testing ---
sol = Solution()
print(sol.twoSum([2, 7, 11, 15], 9))  # Output: [0, 1]
print(sol.twoSum([3, 2, 4], 6))       # Output: [1, 2]
print(sol.twoSum([3, 3], 6))          # Output: [0, 1]