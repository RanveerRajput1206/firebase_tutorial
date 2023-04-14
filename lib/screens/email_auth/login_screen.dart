import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetutorial/home.dart';
import 'package:firebasetutorial/screens/email_auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passWordcontroller = TextEditingController();
    TextEditingController emailController = TextEditingController();
    void login() async {
      String email = emailController.text.trim();
      String password = passWordcontroller.text.trim();
      if (email == "" || password == "") {
        log("Plz fill the info");
      } else {
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          if (userCredential.user != null) {
            Get.to(() => const HomePage());
          }
        } on FirebaseAuthException catch (ex) {
          log(ex.code.toString());
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login")),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email address",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: passWordcontroller,
              decoration: const InputDecoration(
                labelText: "password",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoButton(
            onPressed: () {
              login();
            },
            color: Colors.blue,
            child: const Text('Log In'),
          ),
          CupertinoButton(
            onPressed: () {
              Get.to(() => const SignUpPage());
            },
            child: const Text('Create an account'),
          ),
        ],
      ),
    );
  }
}
