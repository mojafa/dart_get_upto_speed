 void main(List<String> arguments){
  User (name: 'John', password: 'password', photoUrl: 'https://example.com/photo.jpg').hasLongName();
  

}
 
class User{
  final String name;
  final int age = 30;
  final String password ;
  final String photoUrl ;

    const User({
    required  this.name,
    required this.password, 
    required this.photoUrl, 
    });



    bool hasLongName(){
      return name.length > 10;
    }


    static void myMethod(){}

    static const minNameLength = 5;
}