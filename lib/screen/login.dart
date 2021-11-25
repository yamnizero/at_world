import 'package:at_world/theme.dart';
import 'package:at_world/widgets/login_form.dart';
import 'package:at_world/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              "assets/images/@CLUB Gray.png",
              height: 90,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "New to this app?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign Up",
                  style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                )
              ],
            ),
            SizedBox(height: 10),
            LogInForm(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot password?",
              style: TextStyle(
                  color: kForgotColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
              decorationThickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(buttonText: 'Login',),
            SizedBox(
              height: 20,
            ),
            Text('Or Login with:')
          ],
        ),
      ),
    );
  }
}
