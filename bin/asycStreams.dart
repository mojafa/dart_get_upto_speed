void main (List<String> arguments) async{
  final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
  final subscription =  myPeriodicStream.listen((event) {
    print('A second has passed');
  });
await Future.delayed(const Duration(seconds: 5));
  subscription.cancel();
}










// import 'package:http/http.dart';

// void main(List<String> arguments){
//    Client()
//    .get(
//       Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
//     )
//     .then((response) => print(response.body))
//     .catchError((error) => print('error! $error'));
// }