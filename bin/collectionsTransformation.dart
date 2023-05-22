void main(List<String> arguments){
  final names = ['John', 'Jane', 'Mary', 'John'];
  //list
  //names.map((name)=>name.length);

  //iterable
  final lengths =  names.map((name)=>name.length).toList();
  print(lengths[0]);

  // names.map((name)=>name.length).toList();


  final namesFiltered =  names.where((name)=>name.length == 4).toList();
  print(namesFiltered);



  for (int i =0; i<namesFiltered.length; i++){
    print(namesFiltered[i]);
  }


  for (final name in namesFiltered){
    print(name);
  }


namesFiltered.forEach((name) => print(name));
} 