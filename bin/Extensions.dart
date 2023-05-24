void main(List<String> arguments) {
 final x = 'hello'.duplicated;
  print(x);
}

extension Stringduplication on String{

  //method
//   String duplicate() { 
//     return this + this;
// }

//property
String get duplicated {
    return this + this;
}
} 