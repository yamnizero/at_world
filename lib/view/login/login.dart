import 'package:at_world/modules/resetPassword/reset_password.dart';
import 'package:at_world/modules/signup/sign.dart';
import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/@CLUB Gray.png",
                    height: 90,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(height: 10),
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
                    height: 20,
                  ),
                  defaultFormField(
                      controller: password,
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(() {
                          isPassword =!isPassword;
                        });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (String value)
                      {
                        if(value.isEmpty)
                        {
                          return 'password is too short ';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // PrimaryButton(
                  //   buttonText: 'Login',
                  // ),
                  defaultButton(
                    text: 'login',
                    background: kClub,
                    function: ()
                    {
                      if(formKey.currentState.validate())
                      {
                        print(email.text);
                        print(password.text);
                      }

                    },
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t have account?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: textButton.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
