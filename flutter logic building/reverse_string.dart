void main() {
  print(reverseWords("the sky is blue")); // "blue is sky the"
  reverseWords("  hello   world  "); // "world hello"   (extra spaces removed)
  reverseWords("a good   example"); // "example good a"
}

String reverseWords(String s) {
  // your code here

  final val = s.trim().split(RegExp(r'\s+'));
  int l = 0;
  int r = val.length - 1;

  while (l <= r) {
    String temp = val[l];
    val[l] = val[r];
    val[r] = temp;
    l++;
    r--;
  }

  return val.join(' ').toString();
}
