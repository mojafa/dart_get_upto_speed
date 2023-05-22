enum AccountType {
  standard,
  premium,
  deluxe
}

void main(List<String> arguments){
  // final accountType = 'Premium';

  // String accountType = 'Premium';
  const userAccountType = AccountType.premium;
  print(userAccountType.index);

  AccountType.values[1];
  print(AccountType.values[1]);


  switch(userAccountType){
    case AccountType.standard:
      print('Standard account');
      break;
    case AccountType.premium:
      print('Premium account');
      break;
      default: break;
  }

  AccountType.values.forEach((accountType) => print(accountType));


}