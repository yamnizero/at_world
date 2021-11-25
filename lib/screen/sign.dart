import 'package:at_world/theme.dart';
import 'package:at_world/widgets/primary_button.dart';
import 'package:at_world/widgets/signUp_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
        backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 10,),
            Padding(padding: kDefaultPadding,
            child: Text(
              'Create Account',
              style: titleText,
            ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(
                buttonText: 'Create Account',
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
