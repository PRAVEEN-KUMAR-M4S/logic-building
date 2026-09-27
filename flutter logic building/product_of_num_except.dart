List<int> productExceptSelf(List<int> nums) {
  // your code here
  List<int> res = List.filled(nums.length, 0);

  int prefix = 1;

  for (int i = 0; i < nums.length; i++) {
    res[i] = prefix;
    prefix = prefix * nums[i];
  }

  int postfix = 1;

  for (int i = nums.length - 1; i >= 0; i--) {
    res[i] = res[i] * postfix;
    postfix = postfix * nums[i];
  }
  return res;
}

void main() {
  print(productExceptSelf([1, 2, 3, 4])); // [24,12,8,6]
  print(productExceptSelf([-1, 1, 0, -3, 3])); // [0,0,9,0,0]
}
