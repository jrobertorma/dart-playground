part of person;

/// We can use 'protected' variables, like the _type var, extending Person class
/// and only changing the _type value to 'employee'
class Programmer extends Person {
  Programmer({firstName, lastName})
      : super(firstName: firstName, lastName: lastName) {
    _type = PersonType.employee;
  }
}
