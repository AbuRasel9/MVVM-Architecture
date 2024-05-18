import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_manager.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
