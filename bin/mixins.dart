//no multiple inheritance in dart
 void main(List<String> arguments) {

  final bot = ChatBot('123');
  bot.sendElevatedMessage('Hello');
  Admin( specialAdminField: 123, firstName: 'a',lastName: 'b' ).sendElevatedMessage('Hello');
 }

 class User{
  final String firstName;
  final String lastName;

  User(this.firstName, this.lastName);
 }


mixin ElevatedClient{
  void sendElevatedMessage(String text) {
    print('Elevated message: $text');
  }
}


 class Admin extends User  with ElevatedClient{
  final int specialAdminField;

  Admin({
   required this.specialAdminField,
   required String firstName,
   required String lastName,
  }) : super(firstName, lastName);
 }

 class ChatBot with ElevatedClient {
  final String id;

  ChatBot(this.id);
  
void sendElevatedMessage(String text) {
  print('Elevated message: $text');
 }}
