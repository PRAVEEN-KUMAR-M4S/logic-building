bool isPalindrome(String s) {
  // your code here
  String str = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  int low = 0;
  int high = str.length - 1;

  while (low <= high) {
    if (str[low] != str[high]) {
      return false;
    }
    low++;
    high--;
  }
  return true;
}

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false
}
