import 'package:absensionline/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAndToNamed(Routes.DASHBOARD);
              },
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.sizeOf(context).width, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
