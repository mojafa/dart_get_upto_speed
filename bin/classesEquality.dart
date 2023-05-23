// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {

final user1 = const User (
firstName: 'John',
 lastName: 'Doe', 
 );

final user2 = const User (
firstName: 'John',
 lastName: 'Doe',
);


final user3 =  User (
firstName: 'John',
 lastName: 'Doe', 
 );

final user4 =  User (
firstName: 'John',
 lastName: 'Doe',
);

//user1 --->  pointer in memory 


//value equality  

print (user1 == user2) ;

//referential equality
print (user3 == user4) ;
}

class User {
final String firstName;
final String lastName;
const User ({
required this.firstName,
required this.lastName,
});



  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstName == firstName &&
      other.lastName == lastName;
  }

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;
}
