class Person{
  String? firstName;
  String? lastName;
  int? age;

  Person(this.firstName, {this.lastName, this.age});

  void info(){
    print('First Name: $firstName');
    if(lastName!=null){
      print("Last Name: $lastName");
    }
    if(age!=null){
      print('Age: $age');
    }
  }
}

void main(){
  var person = Person('Nat', lastName: 'Bitton');
  person.info();
  var person2 = Person('Nat', lastName: 'Bitton', age: 19);
  person2.info();
  var person3 = Person('Nat');
  person3.info();
}