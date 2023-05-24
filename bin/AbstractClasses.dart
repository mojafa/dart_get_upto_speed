// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

void main(List<String> arguments) {
  final admin =Admin
  (specialAdminField: 123, 
  firstName: 'firstName', 
  lastName: 'lastName',
  );

  admin as User;
  final user = Admin('John', 'Doe', firstName: '', lastName: '');
  print(user is! Admin);

  if (user is Admin) {
    user.specialAdminField;
  }   
}  

abstract class User {
final String _firstName;
final String _lastName;
User(this._firstName,  this._lastName );
String get fullName => '$_firstName $_lastName';
@mustCallSuper
void signOut() {
  print('User signed out');
}
void myMethod() {
  print('myMethod');
}

int get myProperty => throw UnimplementedError();

}
class Admin  extends User {
  final double specialAdminField;
  Admin({
required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName,lastName);


@override
String get fullName => 'Admin: ${super.fullName}';


@override
void signOut() {
  print('Admin signed out');
  super.signOut();
}
}