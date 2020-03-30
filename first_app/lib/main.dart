class Person {
  String name = 'Ron';
  int age = 99;
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}

void main () {
  Person p1 = Person();
  print(p1.age);
  print(addNumbers(1, 2));
}