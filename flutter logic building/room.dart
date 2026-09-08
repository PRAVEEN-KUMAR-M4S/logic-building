import 'dart:math';

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

int countRoom(List<Meeting> meetings) {
  final start = meetings.map((item) => item.start).toList();
  final end = meetings.map((item) => item.end).toList();

  start.sort();
  end.sort();

  int startPoint = 0;
  int endPoint = 0;

  int room = 0;
  int maxRoom = 0;

  while (startPoint < start.length) {
    if (start[startPoint] < end[endPoint]) {
      room++;
      startPoint++;
    } else {
      room--;
      endPoint++;
    }
    maxRoom = max(room, maxRoom);
  }
  return maxRoom;
}

void main() {
  print(
    canAttendAllMeetings([Meeting(0, 30), Meeting(35, 50)]),
  ); // true — no overlap
  print(
    canAttendAllMeetings([Meeting(0, 30), Meeting(20, 50)]),
  ); // false — 20 is inside [0,30]

  print(countRoom([Meeting(0, 30), Meeting(5, 10), Meeting(15, 20)])); // 2
}
