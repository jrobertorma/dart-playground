/// We also can define libraries to divide the classes into more readable
/// and mantainable code, there is an optional 'library' statement, it is
/// optional because in dart, every file can be seen as a library
library person;

/// We can use the 'part' statement to divide our coude even further
/// You must define every part with the 'part of' statement (see the files)
/// This is probably going to change (I don't know why T.T) so don't get fond
/// on this synthax LOL
///
/// We can use 'import' instead, to allow a programmer class extend a
/// person class you must import it first (just like we do in the
/// bin\dart_playground.dart file), there is also the 'export' statement
/// that let us pass the smaller libraries a bigger one needs to the
/// 'customer' importer, so you don't need to import all of them, just
/// the big one lol (see the exportPerson library)
part 'person_types.dart';
part 'programmer.dart';
part 'student.dart';

class Person {
  //class fields
  String firstName;
  String lastName;

  /// We can use 'protected' variables by naming them with an _ (underscore) prefix
  /// the _type property is also accessible in the part files, as it's private
  /// to the person library and all of the files are in the same library
  PersonType _type;

  //Constructor
  Person({this.firstName, this.lastName});

  //toString definition
  String toString() => "($_type): $firstName $lastName";
}
