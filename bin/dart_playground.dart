import 'package:dart_playground/dart_playground.dart' as dart_playground;
import 'package:dart_playground/variables.dart' as variables;

void main(List<String> arguments) {
  var number = 6;

  print('Hello world: ${dart_playground.calculate()}!');
  print('This is the square of $number : ${variables.square(number)}');
}
