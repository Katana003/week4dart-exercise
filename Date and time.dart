void dateTimeDemo() {
  DateTime now = DateTime.now();
  DateTime past = now.subtract(Duration(days: 5));
  DateTime future = now.add(Duration(days: 10));

  // Formatting date
  print("Current date: $now");
  print("5 days ago: $past");
  print("10 days in the future: $future");

  // Calculating difference between two dates
  Duration difference = future.difference(now);
  print("Difference between future and now: ${difference.inDays} days");
}
