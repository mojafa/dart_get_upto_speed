void main(List<String> arguments){
}

class RegularClass {
  final int myField;
RegularClass(this.myField);
int get publicProperty => 123;
String getSomeString(){
  return 'hello';
}
}

class OtherClass implements RegularClass{
  @override
  String getSomeString() {
    // TODO: implement getSomeString
    throw UnimplementedError();
  }

  @override
  // TODO: implement myField
  int get myField => throw UnimplementedError();

  @override
  // TODO: implement publicProperty
  int get publicProperty => throw UnimplementedError();
  }


  abstract class DataReader {
dynamic readData();
  }
  class IntegerDataReader extends DataReader {
    @override
    dynamic readData() {
      // TODO: implement getSomeString
      print('performing logic');
      return 123;
           }
  }
