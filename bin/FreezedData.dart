//struct

import 'package:freezed_annotation/freezed_annotation.dart';
part 'FreezedData.freezed.dart';

void main(List<String> args) {
  final person1 = Person(name: 'John', age: 30);

 final personUpdated =  person1.copyWith(age: person1.age +3);
 print(personUpdated);
}

//creating freezed class
@freezed
class Person with _$Person{
  // ignore: unused_element
  const Person._();

  const factory Person({
    required String name,
    required int age,
  }) = _Person;
}
