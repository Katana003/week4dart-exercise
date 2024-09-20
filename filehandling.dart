import 'dart:io';

void fileHandlingDemo() async {
  try {
    // Read from a file
    String inputFilePath = 'input.txt';
    String fileContent = await File(inputFilePath).readAsString();
    print("File content: $fileContent");

    // Write to a file
    String outputFilePath = 'output.txt';
    String newContent = "This is new content!";
    await File(outputFilePath).writeAsString(newContent);
    print("Written new content to $outputFilePath");
  } catch (e) {
    print("Error during file operations: $e");
  }
}
