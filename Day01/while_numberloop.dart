// Write a Dart program to print numbers from 1 to 100 using a while loop.

// Desired Output:

// 1,2,3....99,100

void main(){
  List<String> numbers=[];
  for(int i=1;i<=100;i++){
    numbers.add('$i');
    
  }
  String output=numbers.join(',');
  print(output);
}