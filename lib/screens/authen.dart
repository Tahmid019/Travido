import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel/screens/home.dart';

import 'package:travel/screens/home.dart';
import 'package:travel/screens/logReg.dart';
import 'package:travel/screens/login.dart';
import 'package:travel/screens/screen.dart';

class Authen extends StatelessWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return const MainScreen();

          }else{
            return LogReg();
          }
        },
      ),
    );
  }
}