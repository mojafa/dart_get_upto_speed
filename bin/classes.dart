void main(List<String> arguments){
  User myUser = const User(
    name: 'John', 
    age: 30, 
    password: 'password', 
    photoUrl: 'https://example.com/photo.jpg',
    );

    myUser.name = 'Matthew Smith';
}
 
class User{
  // late fields can be nullable
  // late String name;
  late   String name;

 final  int age = 30;
 final  String password ;
  final String photoUrl ;

  // User({
  //   required this.firstName,
  //   required this.lastName, 
  //   required this.age, 
  //   required this.password, 
  //   required this.photoUrl
  //   }){
  //     print('User constructor');
  //     name = '$firstName $lastName';
  //   }

//making cinstructir call to call it 
    const User({
    required String firstName,
    required  String lastName, 
    required this.age, 
    required this.password, 
    required this.photoUrl, required String name
    }) : name = '$firstName $lastName';



    bool hasLongName(){
      return name.length > 10;
    }
}