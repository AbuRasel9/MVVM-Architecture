import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  //for toast message
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: Colors.black,
        textColor: Colors.white);
  }

  //for error toast message
  static flushBarErrorMessage(String message, context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          backgroundColor: Colors.red,
          icon: const Icon(
            Icons.error,
            size: 30,
          ),
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: BorderRadius.circular(10),
          margin: const EdgeInsets.all(15),
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.bounceInOut,
          message: message,
        )..show(context));
  }

  //for snackbar message
  static snackBar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
