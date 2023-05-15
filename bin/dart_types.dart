void main(List<String> arguments) {
  final myInteger = 5;
  if (myInteger == 5) {
    print('myInteger is 5');
  } else if (myInteger == 10) {
    print('myInteger is 10');
  } else if (myInteger == 20) {
    print('myInteger is 20');
  }
  else if (myInteger > 30) {
    print('Greater than 30');
    }  else {
    print('myInteger is something else');
  }

//can only check for simple equality
switch (myInteger) {
  case 10:
    print('it\'s 10');
  case 5:
    print('myInteger is 5');
    break;
  case 20:
    print('myInteger is 20');
    break;
  case 30:
    print('myInteger is 30');
    break;
  default:
    print('myInteger is something else');
    break;
}


for (int i = 0; i < 10; i++) {
  print(i);
}

bool myBool = true;
while (myBool) {
  print('myBool is true');
  myBool = false;
}


do {
  print('hello');
}while(false);

}