List<int> rotate(List<int> nums, int k) {
  // your code here
  int n = nums.length;
  k = k % n;
  reverseArray(nums, 0, n - 1);
  reverseArray(nums, 0, k - 1);
  reverseArray(nums, k, n - 1);

  return nums;
}

void reverseArray(List<int> nums, int start, int end) {
  int low = start;
  int high = end;

  while (low <= high) {
    int temp = nums[low];
    nums[low] = nums[high];
    nums[high] = temp;
    low++;
    high--;
  }
}

void main() {
  print(rotate([1, 2, 3, 4, 5, 6, 7], 3)); // [5,6,7,1,2,3,4]
  print(rotate([-1, -100, 3, 99], 2)); // [3,99,-1,-100]
}
