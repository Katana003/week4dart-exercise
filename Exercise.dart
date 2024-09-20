import 'dart:io';

void main() async {
  // 1. Get user input
  print("Enter a string:");
  String? userInput = stdin.readLineSync();

  if (userInput != null && userInput.isNotEmpty) {
    // Perform string manipulation
    print("\n--- String Manipulation ---");
    stringManipulation(userInput);

    // 2. Store results in a collection (List in this case)
    List<String> results = [];
    results.add("Original: $userInput");
    results.add("Reversed: ${userInput.split('').reversed.join('')}");
    results.add("Uppercase: ${userInput.toUpperCase()}");
    results.add("Length: ${userInput.length}");

    // 3. Save the results to a file
    String outputFilePath = 'results.txt';
    await File(outputFilePath).writeAsString(results.join("\n"));
    print("\nResults saved to $outputFilePath");

    // 4. Log the time of entry
    DateTime now = DateTime.now();
    String logFilePath = 'log.txt';
    await File(logFilePath).writeAsString("Entry made on: $now\n", mode: FileMode.append);
    print("Logged the entry time to $logFilePath");

    // DateTime demonstration
    print("\n--- DateTime Manipulation ---");
    dateTimeDemo();
  } else {
    print("Please enter a non-empty string.");
  }
}

void stringManipulation(String input) {
  String concat = input + " concatenated!";
  print("Concatenation: $concat");

  String interpolation = "Interpolating: $input";
  print(interpolation);

  if (input.length >= 5) {
    String substring = input.substring(0, 5);
    print("Substring (first 5 characters): $substring");
  }

  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  String reversed = input.split('').reversed.join('');
  print("Reversed: $reversed");

  print("Length: ${input.length}");
}

void dateTimeDemo() {
  DateTime now = DateTime.now();
  DateTime future = now.add(Duration(days: 10));

  print("Current date: $now");
  print("10 days in the future: $future");
}

