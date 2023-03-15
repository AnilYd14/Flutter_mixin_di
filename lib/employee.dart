
class Employee{

  String id= "123";
  String gender = "Male";
  String name = "Anil";
  String age = "31";
  //
  // Employee(this.id, this.gender, this.name,this.age)._privateConstructor()


  Employee._privateConstructor();

  static final Employee _instance = Employee._privateConstructor();

  factory Employee() {
    return _instance;
  }


}