// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel/widgets/imageBox.dart';

import 'package:travel/widgets/button.dart';

import 'package:travel/widgets/textBlock.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();



  void signIn() {}

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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                SizedBox(height: 50),
            
                Icon(
                  Icons.lock,
                  size: 100,
                ),
        
                SizedBox(height: 25),
        
                Text('Welcome to Travido',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
        
                SizedBox(height: 50),
        
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
        
                SizedBox(height: 50),
        
                Button(
                  onTap: signIn,
                ),
        
                SizedBox(height: 50),
        
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
        
                SizedBox(height: 20),
        
                ImageBox(imagePath: 'assets/images/google.png'),
        
                SizedBox(height: 20),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register Now!',
                      style: TextStyle(color: Colors.blue[200]),
                    ),
                  ],
                ),
        
        
        
        
        
        
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}