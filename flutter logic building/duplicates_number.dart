int findDuplicate(List<int> nums) {
  // your code here
  var setmap = Set();
  for (int i = 0; i < nums.length; i++) {
    final num = nums[i];

    if (setmap.contains(num)) {
      return num;
    }
    setmap.add(num);
  }
  return -1;
}

int findDuplicateConstantSpace(List<int> nums) {
  int slow = nums[0];
  int fast = nums[nums[0]];

  while (slow != fast) {
    slow = nums[slow];
    fast = nums[nums[fast]];
  }
  slow = 0;
  while (slow != fast) {
    slow = nums[slow];
    fast = nums[fast];
  }
  return slow;
}

void main() {
  print(findDuplicateConstantSpace([1, 3, 4, 2, 2])); // 2
  print(findDuplicateConstantSpace([3, 1, 3, 4, 2])); // 3
}
