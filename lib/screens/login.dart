// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel/util/services.dart';
import 'package:travel/widgets/imageBox.dart';

import 'package:travel/widgets/button.dart';

import 'package:travel/widgets/textBlock.dart';


class LoginPage extends StatefulWidget {

  final Function()? onTap;

  LoginPage({Key?key, required this.onTap}):super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  void signIn() async{

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userNameController.text,
        password: passwordController.text,
      );
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      Navigator.of(context).pop();
      // incorrectMail();
      print("=========================");
      print(e.code);
      
      incorrectMail(context);
    }

    
  }

  void incorrectMail(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(221, 0, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        title: Text(
          'Invalid Credentials',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(
          'Please check your email and password and try again.',
          style: TextStyle(color: Colors.white70),
        ),
        
      );
    },
  );
}


  void incorrectPassword() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect password'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[800],
      
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/planets.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  SizedBox(height: 30),
              
                  Icon(
                    Icons.travel_explore,
                    size: 100,
                  ),
              
                  // ImageBox(
                  //   imagePath: 'assets/images/travel.png',
                  // ),
                      
                  SizedBox(height: 25),
                      
                  Text('Welcome to Travido',
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(color: Colors.white),
                  ),
                      
                  SizedBox(height: 40),
                      
                  TextBlock(
                    controller: userNameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  SizedBox(height: 10),
                  TextBlock(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                      
                      
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                      
                  SizedBox(height: 40),
                      
                  Button(
                    onTap: signIn,
                    text: 'Login',
                  ),
                      
                  SizedBox(height: 40),
                      
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Or Continue with'
                          , style: TextStyle(color: const Color.fromARGB(255, 228, 225, 225)),
                        ),
                      ),
                      
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                      
                  SizedBox(height: 15),
                      
                  GestureDetector(
                    onTap: () => AuthService().signInWithGoogle(),
                    child: ImageBox(imagePath: 'assets/images/google.png')
                  ),
                      
                  SizedBox(height: 15),
              
              
                  
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Register Now!',
                          style: TextStyle(color: Colors.blue[200], fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                      
                      
                      
                  
                      
                      
                      
                      
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}