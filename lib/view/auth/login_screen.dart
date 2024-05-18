import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Utils.toastMessage("successfully click");
          Utils.flushBarErrorMessage("No Internet Connection", context);
          Utils.snackBar(context,"No Internet Connection");
        },child: Text("click"),),
      ),

    );
  }
}
