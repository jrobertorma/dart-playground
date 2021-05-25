class Person {
  /// Classes can have 'fields', te 'props' in other languages
  /// A default get/set accessor is defined for every field in a class.
  /// There's a default empty constructor (no arguments) already provided for us.
  /// But we can define our own constructor if we need to.

  String firstName;
  String lastName;

  String getFullName() => '$firstName $lastName';
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

  String getFullName() => '$firstName $lastName';
}
