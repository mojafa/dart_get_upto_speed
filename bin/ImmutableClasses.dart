//struct

import 'package:meta/meta.dart';

void main(List<String> args) {
  final person1 = Person(name: 'John', age: 30);

  //making it mutabke 
//  final person1Upadted =  Person(age: person1.age +3, name: person1.name);
 final personUpdated =  person1.copyWith(age: person1.age +3, name: person1.name);
  print(person1);
  print(personUpdated);
}



@immutable
 class Person{

  //immutable data
  final String name;
  final int age;


  Person({
    required this.name,
    required this.age,
  });


  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
  }
 