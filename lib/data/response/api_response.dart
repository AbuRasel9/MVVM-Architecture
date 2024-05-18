import 'package:mvvm_architecture/data/response/status.dart';

class ApiResponse<T>{

  //akhane T mane jekono data accept korbe mane generic type data

  ///create variable
  Status? status;
  T? data;
  String? message;
  //constructor create
  ApiResponse([this.status,this.data,this.message]);
  //store value
  ApiResponse.loading() :status=Status.Loaing;
  ApiResponse.completed() :status=Status.Completed;
  ApiResponse.error() :status= Status.Error;
  //create override method
  @override
  String toString(){
    //value return
    return ("Status :$status \n Message:$message \n Data:$data");
  }

}