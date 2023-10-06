import 'dart:math';

void main() {
  double area = getArea(7.5);
  print('Area: '+ area.toString());
  
  double volume = getVolume(7.5);
  print('Volume: '+ volume.toString());
  
  double faceDiagonal = getfaceDiagonal(10);
  print('Face Diagonal: '+ faceDiagonal.toStringAsFixed(4));
  
  double spaceDiagonal = getspaceDiagonal(10);
  print('Space Diagonal: '+ spaceDiagonal.toStringAsFixed(4));
}

//area
double getArea(side) {
  return side * side * 6;
}

double getVolume(side) {
  return pow(side,3).toDouble();
}

//task 2

double getfaceDiagonal(side) {
  return sqrt(pow(side,2)+pow(side,2));
}

double getspaceDiagonal(side) {
  return sqrt(pow(side,2)+pow(side,2)+pow(side,2));
}

//void getLoop(){
  //double side2 = 10;
  //for (int i = 10 < 20;)
  //print(side[i]);
  //}
