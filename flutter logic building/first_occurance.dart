int strStr(String haystack, String needle) {
  if (needle.isEmpty) {
    return 0;
  }
  if (haystack.length < needle.length) {
    return -1;
  }
  int i = 0;

  while (i < haystack.length + 1 - needle.length) {
    if (haystack[i] == needle[0]) {
      int s = i;
      int t = 0;

      while (t < needle.length && s < haystack.length) {
        if (haystack[s] != needle[t]) {
          break;
        }
        s++;
        t++;
      }
      if (t == needle.length) {
        return i;
      }
    }
    i++;
  }
  return -1;
}

void main() {
  print(strStr("haystack", "needle"));
}
