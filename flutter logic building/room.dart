import 'dart:math';

class Meeting {
  final int start;
  final int end;
  Meeting(this.start, this.end);

  @override
  toString() => "Meetint($start,$end)";
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

List<Meeting> mergeIntervals(List<Meeting> meetings) {
  meetings.sort((a, b) => a.start.compareTo(b.start));

  List<Meeting> result = [];

  for (final current in meetings) {
    if (result.isEmpty) {
      result.add(current);
      continue;
    }

    final last = result.last;

    if (current.start <= last.end) {
      result[result.length - 1] = Meeting(
        last.start,
        max(last.end, current.end),
      );
    } else {
      result.add(current);
    }
  }

  return result;
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

  print(mergeIntervals([Meeting(0, 5), Meeting(3, 10), Meeting(15, 20)]));
}
