// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments){
  final user = User(firstName: 'John', lastName: 'Doe', email: 'j@d.com');
  print(user.getFullName());
  // user. Email('wefewsf');
   print(user.email);

}
 
class User {
  final String firstName;
  final String lastName;
  String? _email;
 
  User({
    required this.firstName,
    required this.lastName,
    required String email,
  }){ 
    this._email = email;
  }

String getFullName() => '$firstName $lastName';

// property getter
String get fullName => '$firstName $lastName'; 

String get email => _email ?? 'no email'; 

set Email(String value){
  if (value.contains('@')){
    _email = value;
  } else {
    // throw Exception('Invalid email');
    _email = null;
  }
 }
}
