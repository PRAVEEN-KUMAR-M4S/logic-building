import 'dart:math';

int maxSubArray(List<int> nums) {
  // your code here
  int maxSum = nums[0];
  int currSum = 0;

  for (int n in nums) {
    if (currSum < 0) {
      currSum = 0;
    }

    currSum = currSum + n;
    maxSum = max(maxSum, currSum);
  }
  return maxSum;
}

void main() {
  print(
    maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]),
  ); // 6 — subarray [4,-1,2,1]
  print(maxSubArray([1])); // 1
  print(maxSubArray([5, 4, -1, 7, 8])); // 23 — whole array
  print(
    maxSubArray([-3, -1, -2]),
  ); // should be -1 (the least negative single element)
}
