// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/components/my_button.dart';
import 'package:ecommerce_mobile_app/components/my_textfield.dart';
import 'package:ecommerce_mobile_app/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Image(
                image: AssetImage(
                    'lib/images/scalogo.png'), // Replace with your image path
                width: 150.0,
                height: 150.0,
              ),

              const SizedBox(height: 5),

              // welcome back, you've been missed!
              Text(
                'SIGNUP',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "IF YOU'RE ALREADY REGISTERED, ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // firstname textfield
              MyTextField(
                controller: firstnameController,
                hintText: 'First Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // lastname textfield
              MyTextField(
                controller: lastnameController,
                hintText: 'Last Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // phone textfield
              MyTextField(
                controller: phoneController,
                hintText: 'Phone Number',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton2(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
