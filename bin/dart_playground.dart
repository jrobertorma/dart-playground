// import 'package:dart_playground/dart_playground.dart' as dart_playground;
import 'package:dart_playground/variables.dart' as variables;

import 'package:dart_playground/lists.dart' as lists;
import 'package:dart_playground/function_tests.dart' as function_tests;
import 'package:dart_playground/oop_examples.dart' as oop_examples;

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

  oop_examples.PersonChild somePerson = new oop_examples.PersonChild();
  somePerson.firstName = "Alba";
  somePerson.lastName = "Trueba";

  print(somePerson.getFullName());

  /// We also have  the double dot/cascade notation, syntactic sugar, which allows us to chain
  /// a sequence of operations on the same object
  oop_examples.PersonChild anotherPerson = new oop_examples.PersonChild()
    ..firstName = "Pepe"
    ..lastName = "Cussirat";

  print(anotherPerson.getFullName());
  print(anotherPerson);

  /// Class instance with constructor, you need to provide the required fields
  oop_examples.PersonWithConstructor yetAnotherPerson =
      new oop_examples.PersonWithConstructor("Gabriela", "Infante");

  print(yetAnotherPerson.fullName);

  oop_examples.Student randomStudent = new oop_examples.Student(
      "Francisco", "Aldebarán", "Paco Aldebarán, terror de Cuévano");

  print(randomStudent); // same as calling randomStudent.toString()

  //using interfaces
  oop_examples.implementedStudent anotherStudent =
      new oop_examples.implementedStudent(
          "Rubén", "Darío", "El príncipe de las letras hispánicas");

  print(anotherStudent);

  //using mixins
  oop_examples.SeniorDeveloper seniorDev = new oop_examples.SeniorDeveloper(
      "Alan", "Turing", "The father of computer science");

  print(seniorDev);
  seniorDev.coding(); //mixin methods
  seniorDev.manage(); //mixin methods
}
