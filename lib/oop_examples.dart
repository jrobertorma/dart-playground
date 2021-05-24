class Person {
  /// Classes can have 'fields', te 'props' in other languages
  /// A default get/set accessor is defined for every field in a class.
  /// There's a default empty constructor (no arguments) already provided for us.
  /// But we can define our own constructor if we need to.

  String firstName;
  String lastName;

  String getFullName() => '$firstName $lastName';
}
