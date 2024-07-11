import 'package:flutter/material.dart';
import 'package:travel/screens/login.dart';
import 'package:travel/screens/register.dart';

class LogReg extends StatefulWidget {
  const LogReg({Key? key}) : super(key: key);

  @override
  State<LogReg> createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {


  bool isLogin = true;

  void togglePages() {
    setState(() {
      isLogin = !isLogin;
    });
  }





  @override



  Widget build(BuildContext context) {

    if (isLogin) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return Register(
        onTap: togglePages,
      );
    }
  }
}