// import 'package:dart_playground/dart_playground.dart' as dart_playground;
import 'package:dart_playground/variables.dart' as variables;

import 'package:dart_playground/lists.dart' as lists;
import 'package:dart_playground/function_tests.dart' as function_tests;

void main(List<String> arguments) {
  // print('Hello world: ${dart_playground.calculate()}!');

  var exampleList =
      lists.basicList([1, 2, 3, 4, 5]); //[1,2,44,22], see lib\lists.dart

  print(exampleList);
  print(exampleList.indexOf(22));

  var number = exampleList[3];
  print('This is the square of $number : ${variables.square(number)}');

  var functionCall = function_tests.simpleFunction();
  print(functionCall);

  var greeting = function_tests.fancyGreeting('Bob');
  print(greeting);
  var fullGreeting =
      function_tests.fancyGreeting('Bob', lastname: 'Squarepants');
  print(fullGreeting);
}

/**
 * https://dart.dev/guides/language/language-tour#functions
 */