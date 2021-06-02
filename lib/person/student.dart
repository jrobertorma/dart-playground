part of person;

class Student extends Person {
  Student({firstName, lastName})
      : super(firstName: firstName, lastName: lastName) {
    _type = PersonType.student;
  }
}
