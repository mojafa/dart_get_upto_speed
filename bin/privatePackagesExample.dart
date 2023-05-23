import 'privateClasses.dart';

void exampleMethod(){
 final x = Example(1,2);

 //can't even be accesses from the same file
  // x._private;

  NonInstantiable._();


} 