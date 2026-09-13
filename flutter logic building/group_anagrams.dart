List<List<String>> groupAnagrams(List<String> strs) {
  // your code here
  Map<String, List<String>> anagrams = {};

  for (int i = 0; i < strs.length; i++) {
    final str = strs[i];
    final strSorted = (str.split('')..sort()).join('');
    if (anagrams.containsKey(strSorted)) {
      (anagrams[strSorted] ?? []).add(str);
    } else {
      anagrams[strSorted] = [str];
    }
  }
  return anagrams.values.toList();
}

void main() {
  print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
  // → [["eat","tea","ate"], ["tan","nat"], ["bat"]]
  // (order of groups / order within groups doesn't matter)
}
