import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:training_task/screen/login/login_controller.dart';

import '../animation/animation_page.dart';
import '../widgets/home_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LogInController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Lottie.asset('assets/login.json')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: TextField(
                controller: loginController.emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 55.0, right: 55.0, top: 15, bottom: 0),
              child: TextField(
                controller: loginController.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            const SizedBox(height: 60),
            HomeButtons(
              text: 'LogIn',
              function: () {
                loginController.login(loginController.emailController.text,
                    loginController.passwordController.text);
                // Get.to(AnimationPage(
                //   mail: loginController.emailController.text,
                //   password: loginController.passwordController.text,
                // ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
