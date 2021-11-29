import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstN = TextEditingController();
  TextEditingController lostN = TextEditingController();
  TextEditingController nickname = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
        backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TitleSign,),
                    SizedBox(height: 10,),
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
                    SizedBox(height: 20,),
                    Text("Password",style: TitleSign,),
                    SizedBox(height: 10,),
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
                    SizedBox(height: 20,),
                    Text("First Name",style: TitleSign,),
                    SizedBox(height: 10,),
                    defaultFormField(
                        controller: firstN,
                        label: 'First Name',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'First Name must not be empt';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 20,),
                    Text("Last Name",style: TitleSign,),
                    SizedBox(height: 10,),
                    defaultFormField(
                        controller: lostN,
                        label: 'Last Name',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'Last Name must not be empt';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 20,),
                    Text("Enter nickname",style: TitleSign,),
                    SizedBox(height: 10,),
                    defaultFormField(
                        controller: nickname,
                        label: 'Enter nickname',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'Enter nickname must not be empt';
                          }
                          return null;
                        }
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: kDefaultPadding,
                child:  defaultButton(
                  text: 'create account',
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
      ),
    );
  }
}
