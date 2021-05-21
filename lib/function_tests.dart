/// We can use arrow functions (also called lambda functions) as a
/// syntax to replace functionName () { //stuff }
String simpleFunction() => "I'm a simple arrow function";

/// We can have optional parameterers if you define them between curly braces
/// when calling the function you must state them with their values
/// fancyGreeting('Bob', lastname: 'Squarepants');
String fancyGreeting(String name, {String lastname}) {
  return ('Hello $name $lastname');
}
