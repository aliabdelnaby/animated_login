import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animated/style.dart';
import 'package:flutter_animated/views/widgets/sign_up_form.dart';
import 'package:get/get.dart';

import 'widgets/sign_in_form.dart';

class LoginScreenOptions extends StatefulWidget {
  const LoginScreenOptions({super.key});

  @override
  State<LoginScreenOptions> createState() => _LoginScreenOptionsState();
}

class _LoginScreenOptionsState extends State<LoginScreenOptions> {
  Style style = Style();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/bg4.gif',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: Get.width,
            height: Get.height,
            color: const Color.fromARGB(200, 255, 255, 255),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        _showAnimatedDialog(context, const SignInForm()),
                    style: style.btnStyle(
                        btnColor: Colors.white, btnWidth: Get.width / 1.5),
                    child: Text(
                      'Login',
                      style: style.txtStyle(txtColor: Colors.deepOrange),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        _showAnimatedDialog(context, const SignUpForm()),
                    style: style.btnStyle(
                        btnColor: Colors.deepOrange, btnWidth: Get.width / 1.5),
                    child: Text(
                      'Create Account',
                      style: style.txtStyle(txtColor: Colors.white),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  void _showAnimatedDialog(BuildContext context, var value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: value,
          );
        });
  }
}
