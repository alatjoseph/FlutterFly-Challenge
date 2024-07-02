// Write a Dart program to print numbers from 1 to 100 using a do-while
// loop.
// Desired Output:

// 1,2,3....99,100

void main(){
  List<String>numbers=[];
  int i=1;
  do {
    numbers.add('$i');
    i++;
  } while (i<=100);
  String output=numbers.join(',');
  print(output);
}