bool vaildAnagram(String a, String b) {
  if (a.length != b.length) {
    return false;
  }
  Map<String, int> freq = {};

  for (int i = 0; i < a.length; i++) {
    String str = a[i];
    if (freq.containsKey(str)) {
      freq[str] = freq[str]! + 1;
    } else {
      freq[str] = 1;
    }
  }

  for (int i = 0; i < b.length; i++) {
    String str = b[i];
    if (freq.containsKey(str)) {
      freq[str] = freq[str]! - 1;
    } else {
      return false;
    }
  }
  for (int count in freq.values) {
    if (count != 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print(vaildAnagram("hello", "hello"));
}
