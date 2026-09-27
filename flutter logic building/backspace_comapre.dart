bool backspaceCompare(String s1, String s2) {
  int i = s1.length - 1;
  int j = s2.length - 1;

  int skip1 = 0;
  int skip2 = 0;

  while (i >= 0 && j >= 0) {
    while (i >= 0) {
      if (s1[i] == '#') {
        skip1++;
        i--;
      } else if (skip1 > 0) {
        skip1--;
        i--;
      } else {
        break;
      }
    }

    while (j >= 0) {
      if (s2[j] == '#') {
        skip2++;
        j--;
      } else if (skip2 > 0) {
        skip2--;
        j--;
      } else {
        break;
      }
    }

    if (i < 0 && j < 0) {
      return true;
    }

    if (i < 0 || j < 0) {
      return false;
    }
    if (s1[i] != s2[j]) {
      return false;
    }
    i--;
    j--;
  }
  return true;
}

void main() {
  print(backspaceCompare("ab#c", "ad#c")); // true
  print(backspaceCompare("ab##", "c#d#")); // true
  print(backspaceCompare("a#c", "b")); // false
}
