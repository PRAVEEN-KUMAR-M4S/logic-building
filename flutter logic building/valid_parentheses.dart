void main() {
  // print(isVaild("()[]{}")); // true
  // print(isVaild("(]")); // false — wrong bracket type closes it
  // print(isVaild("([)]")); // false — wrong order (closed out of sequence)
  // print(isVaild("{[]}")); // true — properly nested
  print(isVaild(")("));
}

bool isVaild(String s) {
  List<String> stack = [];
  Map<String, String> para = {')': '(', ']': '[', '}': '{'};

  for (int i = 0; i < s.length; i++) {
    final char = s[i];

    if (para.containsKey(char)) {
      if (stack.isEmpty || stack.last != para[char]) {
        return false;
      }
      stack.removeLast();
    } else {
      stack.add(char);
    }
  }
  return stack.isEmpty;
}
