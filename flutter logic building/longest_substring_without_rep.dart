import 'dart:math';

int lengthOfLongestSubstring(String s) {
  Set<String> chars = {};
  int low = 0;
  int maxlength = 0;
  for (int i = 0; i < s.length; i++) {
    // Remove characters until the duplicate is gone
    while (chars.contains(s[i])) {
      chars.remove(s[low]);
      low++;
    }
    chars.add(s[i]);
    // Calculate current window length
    maxlength = max(maxlength, i - low + 1);
  }
  return maxlength;
}

void main() {
  print(lengthOfLongestSubstring("abcabcbb")); // 3 — "abc"
  print(lengthOfLongestSubstring("bbbbb")); // 1 — "b"
  print(lengthOfLongestSubstring("pwwkew")); // 3 — "wke"
}
