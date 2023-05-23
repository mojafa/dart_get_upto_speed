void main(List<String> arguments){
bool isSignedIn = true;
  <String>[
    'This is a fake content',
    if (isSignedIn) 'Sign out' else 'Sign In',
  ];


  <String>[
    for(int i = 0; i<5; i++) i.toString(),
    for (final number in [1,2,3]) number.toString(),

  ];

final list1 = ['hello', 'world'];
final list2 = ['goodbye', 'world'];
<String>[
  ...list1,
  ...list2,
];
}