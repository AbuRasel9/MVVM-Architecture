//ay code er explaination
/*
    This code is an example of exception handling in Dart, a programming language often used for building applications, especially for mobile and web development using the Flutter framework.

Let's break down the code:

1. `class AppException implements Exception`: This line defines a class named `AppException` that implements the `Exception` interface. This means that `AppException` is an exception class, and it must provide an implementation for any methods required by the `Exception` interface.

2. `final _message;` and `final _prefix;`: These are private instance variables (denoted by the underscore prefix) of the `AppException` class. `_message` is used to store the error message, and `_prefix` is used to provide a prefix to the error message. These variables are marked as `final`, meaning they can only be assigned once.

3. `AppException([this._message,this._prefix]);`: This is a constructor for the `AppException` class. It's defined with square brackets `[]`, which means that both `_message` and `_prefix` are optional parameters. The constructor assigns the values passed to `_message` and `_prefix` to the respective instance variables.

4. `String toString() {...}`: This is a method overriding the `toString` method from the `Object` class. It returns a string representation of the exception instance. In this implementation, it concatenates the `_prefix` and `_message` variables and returns the result.

5. `class FetchDataException extends AppException {...}`: This line defines a subclass of `AppException` named `FetchDataException`. This subclass specializes in exceptions related to fetching data.

6. `FetchDataException(String message):super(message,"Error During Communication");`: This is a constructor for the `FetchDataException` class. It takes a `message` parameter, which is passed to the superclass `AppException` along with a fixed prefix `"Error During Communication"`. This syntax `super(message, "Error During Communication")` calls the constructor of the superclass `AppException`, passing the `message` and the prefix.

In summary, this code provides a basic framework for defining custom exceptions in Dart. It allows for creating specific exception types like `FetchDataException` while also providing a generic `AppException` for more general error handling.
*/



class AppException implements Exception{

  //create varibale
  final _message;
  final _prefix;
  //create constractor
  AppException([this._message,this._prefix]);
  String toString(){
    return "$_prefix $_message";

  }
}
//jodi api a hit korar por 10 second a response na ase tahole timeout kore ay msg return korbe
class FetchDataException extends AppException{

  //akhane khali message a ay message pass kora hoice prefix a kno kichu set kora hoi nai
  FetchDataException(String message):super(message,"Error During Communication" );
}
//jodi api a hit korar por base url ba api link vul hoi ay msg return korbe
class BadRequestException extends AppException{
  BadRequestException(String message):super(message,"Bad Request");
}
//jodi api a hit token na pai thole ay msg return korbe
class UnAuthorizedException extends AppException{
  UnAuthorizedException(String message):super(message,"Unautorized Request");
}
//jodi api a invalid input dei thole ay msg return korbe
class InvalidException extends AppException{
  InvalidException(String message):super(message,"Invalid Input");
}