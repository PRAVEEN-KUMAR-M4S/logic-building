String removeDuplicateStr(String s) {
  Set<String> seen = {};
  String result = "";
  int n = s.length;

  for (int i = 0; i < n; i++) {
    String str = s[i];
    if (!seen.contains(str)) {
      seen.add(str);
      result = result + str;
    }
  }
  return result;
}

void main() {
  print(removeDuplicateStr("geEksforGEeks"));
}

// Input: s = "geEksforGEeks"
// Output: "geEksforG"
// Explanation: After removing duplicate characters such as E, e, k, s, we have string as "geEksforG".
