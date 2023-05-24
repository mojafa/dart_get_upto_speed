//async generators and operators
Future<void> main (List<String> arguments) async{
  [1,2,3];
  createMessageStream().map((message) => message.toUpperCase())
  .where((message) => message.length > 5)
  .listen((event) { 
    print(event);
  });
}


 Stream<String> createMessageStream() async*{
  //yield is a way to return a value from a generator
   yield 'hello';
   await Future.delayed(const Duration(seconds: 1));
   yield 'have you heard of...';
  await Future.delayed(const Duration(seconds: 3));
   yield 'FLUTTERRRR';

 } 





// void main (List<String> arguments) async{
//   final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
//   final subscription =  myPeriodicStream.listen((event) {
//     print('A second has passed');
//   });
// await Future.delayed(const Duration(seconds: 5));
//   subscription.cancel();
// }





// import 'package:http/http.dart';

// void main(List<String> arguments){
//    Client()
//    .get(
//       Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
//     )
//     .then((response) => print(response.body))
//     .catchError((error) => print('error! $error'));
// }