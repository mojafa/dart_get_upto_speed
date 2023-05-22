void main(List<String> arguments){
  final names = ['John', 'Jane', 'Mary', 'John'];
  //list
  //names.map((name)=>name.length);

  //iterable
  final lengths =  names.map((name)=>name.length).toList();
  print(lengths[0]);

  // names.map((name)=>name.length).toList();
}