void main(List<String> arguments){}

abstract class DataReader<T> {
  //generic types are placeholders
  //lists are generic types as they hold any tiype
T readData();
  }

  class IntegerDataReader extends DataReader<int> {
    @override
    int readData() {
      // TODO: implement getSomeString
      print('performing logic');
      return 123;
           }
  }

   class StringDataReader extends DataReader<String> {
    @override
    String readData() {
      // TODO: implement getSomeString
      print('performing logic');
      return 'hello world';
           }
  }


void myFunction<T>(T myGenericParameter){
  print(myGenericParameter);
}

void myMethod<T>(T arg){
  
}