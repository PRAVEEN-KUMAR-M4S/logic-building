class Meeting {
  final int start;
  final int end;
  Meeting(this.start, this.end);
}

bool canAttendAllMeetings(List<Meeting> meetings) {
  // your code here
  meetings.sort((a, b) => a.start.compareTo(b.start));

  for (int i = 1; i < meetings.length; i++) {
    final prev = meetings[i - 1];
    final curr = meetings[i];

    if (curr.start < prev.end) {
      return false;
    }
  }
  return true;
}

void main() {
  print(
    canAttendAllMeetings([Meeting(0, 30), Meeting(35, 50)]),
  ); // true — no overlap
  print(
    canAttendAllMeetings([Meeting(0, 30), Meeting(20, 50)]),
  ); // false — 20 is inside [0,30]
}
