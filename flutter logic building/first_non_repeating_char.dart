void main() {
  final ans = nonRepeatingChar("xyz");
  print(ans);
}

String? nonRepeatingChar(String s) {
  Map<String, int> count = {};

  for (int i = 0; i < s.length; i++) {
    count[s[i]] = (count[s[i]] ?? 0) + 1;
  }
  for (int i = 0; i < s.length; i++) {
    if (count[s[i]] == 1) {
      return s[i];
    }
  }
  return null;
}
