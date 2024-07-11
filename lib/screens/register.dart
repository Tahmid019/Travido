// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel/widgets/imageBox.dart';

import 'package:travel/widgets/button.dart';

import 'package:travel/widgets/textBlock.dart';


class Register extends StatefulWidget {

  final Function()? onTap;

  Register({Key?key, required this.onTap}):super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  void signUp() async{

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if(passwordController.text == confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userNameController.text,
          password: passwordController.text,
        );
      } else {
        // Navigator.of(context).pop();
        incorrectMail(context);
      }

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


  void incorrectPassword(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color.fromARGB(221, 0, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        title: Text(
          'Incorrect Password',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(
          'Please check your password and try again.',
          style: TextStyle(color: Colors.white70),
        ),
        
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                      
                  SizedBox(height: 30),
                      
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
                  TextBlock(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                      
                      
                  // SizedBox(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                        
                  //       Text(
                  //         'Forgot Password?',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                      
                  SizedBox(height: 30),
                      
                  Button(
                    onTap: signUp,
                    text: 'Register',
                  ),
                      
                  SizedBox(height: 30),
                      
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
                      
                  SizedBox(height: 10),
                      
                  ImageBox(imagePath: 'assets/images/google.png'),
                      
                  SizedBox(height: 10),
              
              
                  
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login',
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