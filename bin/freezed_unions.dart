import 'package:freezed_annotation/freezed_annotation.dart';

part 'FreezedData.freezed.dart';

void main(List<String> arguments) {
  // final myObject = SubClass2() as SuperClass;

  const resultSuccess = Result.success(100);
  print(
    resultSuccess.when(
      loading: () {
        return 'Loading...';
      },
      success: (value) {
        return 'Yes! data gotten successfully: $value';
      },
      failure: (message) {
        return 'Oops! something went wrong: $message';
      },
    ),
  );

  print(
    resultSuccess.maybeWhen(
      orElse: () => '',
      failure: (message) {
        return 'Oops! something went wrong: $message';
      },
    ),
  );

  print(
    resultSuccess.map(
      loading: (_) {
        return 'Loading...';
      },
      success: (successCase) {
        return 'Yes! data gotten successfully: ${successCase.value}';
      },
      failure: (failureCase) {
        return 'Oops! something went wrong: ${failureCase.errorMessage}';
      },
    ),
  );

  print(
    resultSuccess.maybeMap(
      orElse: () => '',
      failure: (message) {
        return 'Oops! something went wrong: $message';
      },
    ),
  );
}

@freezed
class Result with _$Result {
  const factory Result.loading() = _Loading;
  const factory Result.success(int value) = _Success;
  const factory Result.failure(String errorMessage) = _Failure;
}


  //freezed unions check these

  // if(myObject is SubClass1){

  // }else if(myObject is SubClass2){

  // } else if(myObject is SubClass3){}

  // class SuperClass{}
// class SubClass1  extends SuperClass{
//   final int x = 123; 

// }
// class SubClass2 extends SuperClass{
//   final String y = 'hey';
// }

// class SubClass3 extends SuperClass{
//   final bool z = true;
// }
