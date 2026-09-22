int findKthLargest(List<int> nums, int k) {
  // your code here
  nums.sort();
  return nums[nums.length - k];
}

int findKthLargest2(List<int> nums, int k) {
  int target = nums.length - k;
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int pivotIndex = partation(nums, left, right);
    if (target == pivotIndex) {
      return nums[target];
    } else if (pivotIndex < target) {
      left = pivotIndex + 1;
    } else {
      right = pivotIndex - 1;
    }
  }
  throw Exception("no value found");
}

int partation(List<int> nums, int left, int right) {
  int pivot = nums[right];
  int i = left;

  for (int j = left; j < right; j++) {
    if (nums[j] <= pivot) {
      int temp = nums[i];
      nums[i] = nums[j];
      nums[j] = temp;
      i++;
    }
  }

  int temp = nums[i];
  nums[i] = nums[right];
  nums[right] = temp;

  return i;
}

void main() {
  print(findKthLargest2([3, 2, 1, 5, 6, 4], 2)); // 5
  print(findKthLargest2([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)); // 4
}
