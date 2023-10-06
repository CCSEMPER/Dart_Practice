import 'dart:math';
void main() {
  bool rainy = false;
  bool isStudent = false;
  int age = 21;
  bool discountA = false;
  bool discountB = true;
  
  if (rainy) {
    print('Take umbrella: 🌂');
  } else {
    print('Take sunglasses: 🕶');
  }

//shorthand
  print('${rainy == true ? 'Take umbrella: 🌂' : 'Take sunglasses: 🕶'}');
  print('Remember your bag: 🎒');
//condition ? expIfTrue : exIfFalse

//elif
  bool cold = true;
  if (rainy) {
    print('Take umbrella: 🌂');
  } else if (cold) {
    print('Take gloves: 🧤');
  } else {
    print('Take sunglasses: 🕶');
  }
  print('Remember your bag: 🎒');
  
  print('Remember your bag: 🎒');
  
  String name = 'Vergilius the Red Gaze';
  print(greet(name));
  
  if (!isStudent){ //not notation
    print('You are not a student');
  }
  
  if (age >= 16 && age <= 25) { //and notation
    print('You can get 16-25 railcard');
  }
  
  if (discountA || discountB) { //or notation
    print('You can get a discount');
  }
  
  double priceOfTicket = 40;
  double proportionToPay = ((age >= 16 && age <= 25) || isStudent) ? 0.75 : 1;

  print('You need to pay £${proportionToPay * priceOfTicket}');
  
  //For loop
  print('Sum is ${sumBetween(5, 10)}'); // Sum is 45 (5+6+7+8+9+10)
  
  print('Sum is ${sumBetweenSkip1(5, 10)}'); // Sum is 21 (5+7+9)
  
  //backward iteration
  print(countdown());
  
 //#############Worked example and worksheet#############################
  play(7);

  // Answer to the bonus challenge
  String output = '';
  for (int i = 0; i < 100; i++) {
    output += '${getRandom(0, 10)}, ';
  }
  print('100 random numbers: ' + output);
  
}

//##########################functions ####################################

String greet(String name) {
  String output = 'Hello $name.';

  // if name's length (number of characters) was more than 10
  if (name.length > 10) {
    output += '\nThat is a long name';
  }

  return output;
}

/// Returns the sum of numbers between the start and the end
/// includes start and end in the sum
int sumBetween(int start, int end){
  int sum = 0;

  //“i++” is a shorthand for “i = i + 1” which increases the variable i by one
  for (int i = start; i <= end; i++) {
    sum += i; // Same as: sum = sum + i
  }
  
  return sum;
}

/// Returns the sum of numbers between start and end
/// includes start and end but skips every other number
int sumBetweenSkip1(int start, int end){
  int sum = 0;

  for (int i = start; i <= end; i += 2) {
    sum += i;
  }
  
  return sum;
}

//###############FOR LOOP##############
String countdown() {
  String output = '';

  for (int count = 10; count > 0;count--) {   //START TIME, END TIME, STEPS
    output += '$count, ';
  }

  output += '... Liftoff! 🚀';
  return output;
}

//#########WHILE LOOP###################
  String countdown2() {
  String output = '';
  int count = 10;

  while (count > 0) {
    output += '$count, ';
    count--;
  }

  output += '... Liftoff! 🚀';
  return output;
}

/// Returns a random number between min and max (inclusive)
int getRandom(int min, int max) {
  Random randomGenerator = Random();
  return randomGenerator.nextInt(max - min) + 1;
}

/// A basic number guessing game where the user passes their
/// guess as the input and the function prints the outcome
void play(int guess) {
  int secretNumber = getRandom(0, 10);

  print('Your guess is $guess, let\'s check it ...');

  if (guess == secretNumber) {
    print('Well done! The random number was $secretNumber.');
  } else if (guess < secretNumber) {
    print('The secret number is smaller than your guess.');
  } else {
    print('The secret number is bigger than your guess.');
  }
}