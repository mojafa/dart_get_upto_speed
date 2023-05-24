void main(List<String> arguments){

  final x = Example(1,2);
  x._private;

}

class Example {
  int public;
  int _private;

  Example(this.public, this._private);
  Example.namedConstructor({
    required this.public, 
    required int privateParam,
}): _private = privateParam;


void myMethod() {
_private;
//in dart t
//here are no class private fields only package private fields
} 

// class NonInstantiable{
//   NonInstantiable._();
//   //this class can't be instantiated
//   //because it's constructor is private
//   //but it can be extended
// }

}

class NonInstantiable{
  NonInstantiable._();
  //this class can't be instantiated
  //because it's constructor is private
  //but it can be extended
}