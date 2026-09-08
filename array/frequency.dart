Map<String, dynamic> frequency(String s) {
  Map<String, dynamic> map = {};

  for (int i = 0; i < s.length; i++) {
    String str = s[i];
    if (map.containsKey(str)) {
      map[str] = map[str] + 1;
    } else {
      map[str] = 1;
    }
  }
  return map;
}

void main() {
  print(frequency("hello"));
}
