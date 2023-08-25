import 'package:flutter/material.dart';
import 'package:flutter_animated/views/widgets/signup_input_field.dart';
import 'package:get/get.dart';

import '../../style.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  double _dialogHeight = 0;
  double _dialogWidth = Get.width;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        _dialogHeight = Get.height / 2;
      });
    });
  }

  Widget build(BuildContext context) {
    Style style = Style();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      height: _dialogHeight,
      width: _dialogWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width,
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const InputField(
              title: 'Email',
              isSecured: false,
            ),
            const InputField(
              title: 'Password',
              isSecured: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: style.btnStyle(
                    btnWidth: Get.width / 3,
                    btnColor: const Color.fromARGB(255, 241, 241, 241),
                  ),
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 50));
                    () {
                      setState(() {
                        _dialogHeight = 0;
                      });
                    };
                    await Future.delayed(const Duration(milliseconds: 450));
                    Get.back();
                  },
                  child: Text(
                    'Cancel',
                    style: style.txtStyle(txtColor: Colors.deepOrange),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 50));
                    () {
                      setState(() {
                        _dialogHeight = 0;
                      });
                    };
                    await Future.delayed(const Duration(milliseconds: 450));
                    Get.back();
                  },
                  style: style.btnStyle(
                    btnWidth: Get.width / 3,
                    btnColor: Colors.deepOrange,
                  ),
                  child: Text(
                    'Login',
                    style: style.txtStyle(txtColor: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
