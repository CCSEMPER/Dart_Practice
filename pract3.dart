import 'dart:math';

void main() {
  timesTwo(5);
  timesTwo2(6);
  greeting('Dante','Morning');
  greeting('Vergil','Evening');
  //reuse the functions, no need to make new ones.
  
  String userInput = 'I am mother';
  String formattedInput = applyToWords(userInput, loudify);
  print(formattedInput);
  
  userInput = 'Dante... no time for dat Dante....';
  formattedInput = applyToWords(userInput, numberfy);
  print(formattedInput);
  //###############Worked examples variables#####################
  print('Tries\t0-10\t0-100');
  print('-' * 21);
  for (int x = 1; x < 7; x++) {
    int tries = pow(10, x).toInt();
    double average1to10 = averageNTries(tries, getRandom1to10);
    double average1to100 = averageNTries(tries, getRandom1to100);
    print('$tries'
        '\t${average1to10.toStringAsFixed(2)}'
        '\t${average1to100.toStringAsFixed(2)}');
  }
}
 

int timesTwo(int x) {
  return x * 2;
}

//expressions can be simplified with =>. Expressions carry a value

int timesTwo2(int x) => x * 2;

//times4 can subsequently be simplified

int timesFour(int x) => timesTwo(timesTwo(x));

void greeting(String name, String timeOfDay){
  print('Good $timeOfDay, $name!');
}

String loudify(String msg) {
  msg = msg.toUpperCase();
  return msg + '!';
}

//applyToWords takes a string function and is passed a string.
String applyToWords(String msg, String Function(String) format) {
  String output = '';
  // Split the message into words
  for (String word in msg.split(' ')) {
    // Format each word and add it to the output
    String formattedWord = format(word);
    output += formattedWord + ' ';
  }
  return output;
}

String numberfy(String msg) {
  msg = msg.replaceAll('o', '0');
  msg = msg.replaceAll('i', '1');
  msg = msg.replaceAll('b', '6');
  msg = msg.replaceAll('e', '3');
  msg = msg.replaceAll('a', '4');
  msg = msg.replaceAll('s', '5');
  return msg;
}

//################Examples and Worksheets############################
/// Prints 20 random numbers from 0 to 9
int getRandom1to10() => Random().nextInt(11);

int getRandom1to100() {
  Random randomGenerator = Random();
  return randomGenerator.nextInt(101);
}

double averageNTries(int n, int Function() getNum) {
  int sum = 0;
  for (int i = 0; i < n; i++) {
    sum += getNum(); // sum = sum + getNum()
  }
  return sum / n;
}