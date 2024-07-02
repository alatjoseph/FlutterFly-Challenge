// a base class called Animal with a method makeSound() that prints a generic sound. Then,// create a subclass Dog that overrides the makeSound() method to print a dog-specific sound.
//Finally, create an object of the Dog class and call its makeSound() method.

class Animal{
  void makeSound(){
    print('Generic Sound!');
  }
}

class Dog extends Animal{
  @override
  void makeSound() {
    print('Bark');
  }
}

void main(){
  Dog d=Dog();
  d.makeSound();
}