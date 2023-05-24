void main(List<String> arguments){
  User myUser = User(
    firstName: 'John', 
    lastName: 'Smith',
    age: 30, 
    password: 'password', 
    photoUrl: 'https://example.com/photo.jpg', name: '',
    );

    myUser.name = 'Matthew Smith';
    print(myUser.name);
}
 
class User{
  late   String name;
 int age = 30;
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
    User({
    required String firstName,
    required  String lastName, 
    required this.age, 
    required this.password, 
    required this.photoUrl, required String name
    }) : name = '$firstName $lastName'{
      print('User constructor');
    }

    bool hasLongName(){
      return name.length > 10;
    }
}