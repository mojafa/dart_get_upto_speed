void main(List<String> arguments) {
int plusFive(int x){
  return x + 5;

}
final twicePlusFive = twice(plusFive);

// final twicePlusFive = twice((x){
// return x+5;
// }); 

// final twicePlusFive = twice((x) => x+5);

final result = twicePlusFive(3);
print(plusFive(3));
}



typedef IntToInt = int Function(int);

IntToInt twice(IntToInt f){
  return (int x) => f(f(x));
}
  
// int Function(int) twice(int Function(int) f){
//   return (int x) => f(f(x));
// } 