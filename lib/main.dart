import 'package:flutter/material.dart';
import 'package:travel/util/const.dart';

import 'package:travel/screens/screen.dart';
import 'package:travel/screens/login.dart';


// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:travel/screens/authen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.darkTheme,
      // home: const MainScreen(),
      home: Authen(),
    );
  }
}


