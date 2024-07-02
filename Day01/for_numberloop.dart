// Write a Dart program to print numbers from 1 to 100 using a for loop.

// Desired Output:

// 1,2,3....99,100

void main() {
  List<String> numbers = [];  // Initialize an empty list to store the numbers as strings

  for (int i = 1; i <= 100; i++) {
    numbers.add(i.toString());  // Add each number to the list as a string
  }

  String output = numbers.join(',');  // Join the list into a single string separated by commas
  print(output);  // Print the final comma-separated string
}
