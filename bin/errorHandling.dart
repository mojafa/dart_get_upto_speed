void main(List<String> args){
  try{
    final myInt = int.parse('dfghj');
    final myInt2 = int.parse('123');
    throw mycustomException('this is my custom exception');
  } on FormatException{
   print('Format');
} finally{
  print('this always runs');
}
} 


class mycustomException implements Exception{
  final String message;
  const mycustomException(this.message);
  @override
  String toString() => message;
}


//erros should never be caught 
//erros crash the
class mycustomError extends Error{}