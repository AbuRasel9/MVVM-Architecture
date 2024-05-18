import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';

import '../../view/auth/login_screen.dart';
import '../../view/home_screen/home_screen.dart';
class Routes{

  //generateRoute name a akta function banaici
  static Route<dynamic> generateRoute(RouteSettings settings){
    //switch case use koreci jeta hobe sei screen a navigate korbe
    switch(settings.name){
      //route name jodi home screen hoi tahole home screen a jabe
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context)=>const HomeScreen(),);
        //route name jodi login hoi tahole login screen a jabe
      case RoutesName.login:
        return MaterialPageRoute(builder: (context)=>const LoginScreen());
        //kno value jodi route name a na pai tahole scaffold er body te ay msg ta show korbe
      default:
        return MaterialPageRoute(builder: (context)=>const Scaffold(
          body: Center(
            child: Text("No Page Found"),
          ),
        ));
    }


  }
}