import 'package:flutter/material.dart';
import 'package:travel/screens/login.dart';

class Logu extends StatefulWidget{
  const Register({Key?key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>{

  bool showLogingPage = true;

  void tooglePage(){
    setState(() {
      showLogingPage = !showLogingPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogingPage) {
      return LoginPage(
        onTap: tooglePage,
      );
    } else {
      return Register();
    }
  }
}