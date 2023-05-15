// import 'package:dart_get_upto_speed/dart_get_upto_speed.dart' as dart_get_upto_speed;

void main(List<String> arguments) {
  String name = 'Dart';
  print(name);
  print(name.contains('t'));

  int age = 25;
  print(age.toString());
  print(age.isEven);
  double height = 1.75; 
  print(height.toString());
  print(height.isNaN);

num myNum = 25;
print(myNum);
  bool myBool = true;
  print(myBool);

  dynamic myDynamic = 'Dart';
  print(myDynamic);
  myDynamic = 25;
    print(myDynamic);

  // no longs and floats in Dart
  // dart does type inference
  // variables declared in var can be reassigned

  var mystery = 42;
  print(mystery);
  // mystery = 'answer' as int;

  final myStery = 42;
  print(myStery);
  mystery = 'answer' as int;

  // final and const
  // final is a runtime constant
  // const is a compile time constant

  //final cannot be modified after declaration


  String MYSTRING;
  MYSTRING = 'Dart'; 
  print(MYSTRING);
 
//non-nullability ?. safe operator, !. unsafe operator
String? impossible = null;
impossible?.length; 


//operators
// + - * / %
// ++ -- += -= *= /= %=
// == != > < >= <=
// && || !
// ??= ??
// is as
// .. cascade operator
int x = 5;
x += 1;
x++;
x--;
x *= 2;
x ~/= 2;
x %= 2;

bool isEqual = 5 ==10;  //false

String myNewString = 'Hello ${5+5/2 + 10}'; //Hello 20.0
print(myNewString);

}
