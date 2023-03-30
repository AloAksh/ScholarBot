void main(){
  Vehicle v1 = Vehicle(4, 250, "Suzuki");
  Vehicle v2 = Vehicle(3, 150, "Bajaj");

  v1.display();
  v2.display();

  Car c1 = Car(4, 250, "Suzuki");
  c1.display();
  
}

class Vehicle{
  int wheels=0, rpm=0;
  String manufacturer="";

  Vehicle(int wheels, int rpm, String manufacturer){
    this.wheels = wheels;
    this.manufacturer = manufacturer;
    this.rpm = rpm;
  }

  void display(){
    print("No. of wheels = $wheels");
    print("RPM = $rpm");
    print("Manufacturer = $manufacturer");
  }
}

class Car extends Vehicle{
  Car(int wheels, int rpm, String manufacturer): super(wheels,rpm,manufacturer);
  
}