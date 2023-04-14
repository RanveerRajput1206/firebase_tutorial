import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetutorial/screens/email_auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();
    // ignore: unused_element
    void createAccount() async {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String cpass = confirmPassController.text.trim();
      if (email == "" || password == "" || cpass == "") {
        log("Fill all details");
      } else if (password != cpass) {
        log("Password do not match");
      } else {
        //Create new account
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
          if (userCredential.user != null) {
            Get.to(() => const LoginScreen());
          }
        } on FirebaseAuthException catch (ex) {
          log(ex.code.toString());
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => const LoginScreen());
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
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
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: "password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: confirmPassController,
              decoration: const InputDecoration(
                labelText: "Confirm password",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoButton(
            onPressed: () {
              createAccount();
            },
            color: Colors.blueAccent,
            child: const Text('Create account'),
          ),
        ],
      ),
    );
  }
}
