// String manipulation
void stringManipulation(String input) {
  // 1. Concatenation
  String concat = input + " concatenated!";
  print("Concatenation: $concat");

  // 2. Interpolation
  String interpolation = "Interpolating: $input";
  print(interpolation);

  // 3. Substring extraction
  if (input.length >= 5) {
    String substring = input.substring(0, 5);
    print("Substring (first 5 characters): $substring");
  }

  // 4. Case conversion
  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  // 5. Reverse the string
  String reversed = input.split('').reversed.join('');
  print("Reversed: $reversed");

  // 6. Length of the string
  print("Length: ${input.length}");
}

