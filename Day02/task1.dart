// Create a class called Car with the following properties: brand, model, and year. Add a constructor to initialize these properties. Then, create an object of the Car class and print out the details of the car.
class Car {
  String brand;
  String model;
  String year;
  Car({required this.brand, required this.model, required this.year});

  void display() {
    print('Brand:$brand,Model:$model,Year:$year');
  }
}

void main() {
  Car c = Car(brand: 'Toyoto', model: 'Corolla', year: '2020');
  c.display();
}
