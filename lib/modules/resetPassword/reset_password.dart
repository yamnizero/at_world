

import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController email = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: kDefaultPadding,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Forgot Password?',style: titleText,),
                    SizedBox(height: 8,),
                    Text('Enter your email address and we\'ll send',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    ),
                    ),
                    Text(' instruction to reset your password.',style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),
                    ),
                    SizedBox(height: 40,),
                    defaultFormField(
                        controller: email,
                        label: 'Email',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'email must not be empt';
                          }
                          return null;
                        }
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    // PrimaryButton(
                    //   buttonText: 'Login',
                    // ),
                    defaultButton(
                      text: 'Submit',
                      background: kClub,
                      function: ()
                      {
                        if(formKey.currentState.validate())
                        {
                          print(email.text);

                        }

                      },
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),



    );
  }
}
