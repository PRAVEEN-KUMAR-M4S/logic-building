void main() {
  print(twoSum([2, 7, 11, 15], 9)); // [0, 1] — nums[0] + nums[1] == 9
  print(twoSum([3, 2, 4], 6)); // [1, 2] — nums[1] + nums[2] == 6
}

List<int> twoSum(List<int> arr, int target) {
  Map<int, int> heap = {};
  for (int i = 0; i < arr.length; i++) {
    int tar = target - arr[i];

    if (heap.containsKey(tar)) {
      return [heap[tar]!, i];
    } else {
      heap[arr[i]] = i;
    }
  }
  return [];
}
