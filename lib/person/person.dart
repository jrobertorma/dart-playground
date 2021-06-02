/// We also can define libraries to divide the code into more readable
/// and mantainable code, there is an optional library statement, it is
/// optional because in dart, every file can be seen as a library
library person;

import 'package:dart_playground/oop_examples.dart';

/// We can use the 'part' statement to divide our coude even further
part 'person_types.dart';
part 'programmer.dart';
part 'student.dart';

class Person {
  String firstName;
  String lastName;
  PersonType _type;
  Person({this.firstName, this.lastName});
  String toString() => "($_type): $firstName $lastName";
}
