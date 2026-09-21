int findKthLargest(List<int> nums, int k) {
  // your code here
  nums.sort();
  return nums[nums.length - k];
}

void main() {
  print(findKthLargest([3, 2, 1, 5, 6, 4], 2)); // 5
  print(findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)); // 4
}
