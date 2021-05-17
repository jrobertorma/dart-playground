// import 'package:dart_playground/dart_playground.dart' as dart_playground;
// import 'package:dart_playground/variables.dart' as variables;

import 'package:dart_playground/lists.dart' as lists;

void main(List<String> arguments) {
  // var number = 6;

  // print('Hello world: ${dart_playground.calculate()}!');
  // print('This is the square of $number : ${variables.square(number)}');
  var exampleList = lists.basicList(); //[1,2,44,22], see lib\lists.dart

  print(exampleList);
  print(exampleList.indexOf(22));
}
