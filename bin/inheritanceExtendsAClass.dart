// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

void main(List<String> arguments) {
  final admin =Admin(specialAdminField: 123, firstName: 'firstName', lastName: 'lastName');
  print(admin.fullName);

  final user = admin as User;
  user.signOut();
  print(user is! Admin);

  if (user is Admin) {
    user.specialAdminField;
  }
}  

//every single class in dart extends object...like java literally

class User {
final String _firstName;
final String _lastName;
  User({
     required String firstName,
     required String lastName,
  }) : _firstName = firstName, _lastName = lastName;



String get fullName => '$_firstName $_lastName';

@mustCallSuper
void signOut() {
  print('User signed out');
}
 
}

class Admin  extends User {
  final double specialAdminField;
  Admin({

required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(
    firstName: firstName,
    lastName: lastName,
  );

  @override
String get fullName => 'Admin: ${super.fullName}';


@override
void signOut() {
  print('Admin signed out');
  super.signOut();
}
}