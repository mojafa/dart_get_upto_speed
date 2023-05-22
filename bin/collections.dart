void main(List<String> arguments){
  List myList = [1,2,3,4,5];
  final firstElment = myList[0];

  print(firstElment);


  final myList2 = [1,2,3,4,5];
  final firstElment2 = myList2[0];
  print(firstElment2);


  <int>[1,2,3,4,5];

  Map<String, int> myMap = {
    'first': 1,
    'second': 2,
    'third': 3,
  };
  print(myMap);


  Set<String> mySet = {
    'first',
    'second',
    'third',
  };
  print(mySet);


  final myList3 = [1,2,3,4,5];
  myList3.add(6);
  print(myList3);
  myList3.add(6);
  print(myList3);



  
}