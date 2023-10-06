import 'dart:math';



void main() {
  
  int number1 = 10;
  int number2 = 14;
  
  bool val1 = number1 > 10 && number2 > 13 || number1 == 10;
  print("Logic result is: $val1");
  
  double circumference = getCircumference(10);
  print(circumference.toString());
  
  double area = getArea(10);
  print(area.toString());
  
  double gradient = getGradient(6,2,4,1).toDouble();
  print(gradient);
  
  double distance = distanceBetweenPoints(6,2,4,1);
  print(distance);
}


double getCircumference(double radius) {
  return 2 * pi * radius;
}

double getArea(double radius) {
  return pi * squared(radius);
}

double squared(double radius) {
  return pow(radius,2).toDouble();
}

double getGradient(y2,y1,x2,x1) {
  return (y2-y1)/(x2-x1);
} //picky about type conversion

double distanceBetweenPoints(x2,x1,y2,y1) {
  return sqrt(pow(x2-x1,2)+pow(y2-y1,2));
}