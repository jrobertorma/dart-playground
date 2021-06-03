part of person;

/// extending Person class and only changing the _type value to 'student'
class Student extends Person {
  Student({firstName, lastName})
      : super(firstName: firstName, lastName: lastName) {
    _type = PersonType.student;
  }
}
