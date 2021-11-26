import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
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
              child:  defaultButton(
                text: 'create account',
                background: kClub,
                function: ()
                {

                },
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, child: Text("Terms of Service")),
                SizedBox(width: 2,),
                Text('And',style: TextStyle(color: Colors.white,fontSize: 16),),
                SizedBox(width: 2,),
                TextButton(onPressed: (){}, child: Text("Privacy Policy")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
