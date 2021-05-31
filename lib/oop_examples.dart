/// We can create 'abstract classes' on dart, an abstract class is a class
/// that can not be instantiated, wich means only can be used as a
/// parent class, we only add the 'abstract' keyword before the class name
abstract class Person {
  /// Classes can have 'fields', te 'props' in other languages
  /// A default get/set accessor is defined for every field in a class.
  /// There's a default empty constructor (no arguments) already provided for us.
  /// But we can define our own constructor if we need to.

  String firstName;
  String lastName;

  String getFullName() => '$firstName $lastName';
}

/// If we call 'Person somePerson = new Person();'
/// we get an error message 'Abstract classes can not be instantiated'

class PersonChild extends Person {
  @override
  String toString() => "lol, you don't know who I am (maybe $firstName)";
}

class PersonWithConstructor {
  String firstName;
  String lastName;

  /// Constructor with mandatory arguments
  /// We can also use the equivalent shortcut syntax
  /// Person(this.firstName, this.lastName);
  /// We can omit the constructor body as it only sets the class field
  /// values without any additional setup applied to it.
  PersonWithConstructor(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  String get fullName => '$firstName $lastName';
}

/// We can also use the extend keyword to (you guessed it) extend
/// an existing class

class Student extends PersonWithConstructor {
  /// A new field for our Student class
  String nickName;

  /// The class constructor, notice how we call the PersonWithConstructor class constructor,
  /// passing the required parameters. This is done with the 'super' keyword.
  Student(String firstName, String lastName, this.nickName)
      : super(firstName, lastName);

  /// we change the behavior of a parent class
  /// (Object, in this case) on the child class.
  @override
  String toString() => '$fullName, also known as $nickName';
}

/// A note about 'interfaces' in OOP
/// An interface is a description of the actions that an object can do.
/// In OOP an interface is a description of all the functions an object
/// must have in order to be an "X".
///
/// Interfaces allow the programmer to be more abstract when referencing objects
/// for example, var vehicle : Vehicle, can reference any car, truck, etc...
/// anything that is a vehicle (and not care what type it is.)
///
/// They require the programmer to create specific functions that are expected
/// in an implementing class when it implements an Interface. Wich encourages
/// code reusability and enforeces an OOP focused design.
///
/// this allows all objects in a "set" of like objects to be treated based on the
/// "high level" type of the set, rather than on the specific type of the individual object.
///
/// (https://www.cs.utah.edu/~germain/PPS/Topics/interfaces.html)

/// In dart All class declarations are themselves interfaces.
/// this means that every class can be 'implemented' as an interface too.

class implementedStudent implements PersonWithConstructor {
  String nickName;

  @override
  String firstName;

  @override
  String lastName;

  implementedStudent(this.firstName, this.lastName, this.nickName);

  @override
  String get fullName => '$firstName $lastName';

  @override
  String toString() => '$fullName, also known as $nickName, yoyoyo';
}

/// We can also use mixins in Dart
/// In OOP, mixins are a way to include functionalities on a class without the need for
/// associations between the parts, such as inheritance.
///
/// So for example, some people may have specific skills and common skills.
/// Mixins can be ideal for this use case because we can add
/// the skills to a profession without the need to extend a common, more generic class or
/// implement an interface in each one. As the implementation would probably be the same, it
/// would cause code duplications

class ProgrammingSkills {
  coding() {
    print("Writing code");
  }
}

class ManagementSkills {
  manage() {
    print("Managing project");
  }
}

class SeniorDeveloper extends Student with ProgrammingSkills, ManagementSkills {
  SeniorDeveloper(String firstName, String lastName, String nickName)
      : super(firstName, lastName, nickName);
}
