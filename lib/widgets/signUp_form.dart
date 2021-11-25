import 'package:flutter/material.dart';

import '../theme.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstN = TextEditingController();
  TextEditingController lostN = TextEditingController();
  TextEditingController nickname = TextEditingController();
  bool _isObscure =true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email",style: TitleSign,),
            SizedBox(height: 5,),
            buildInputForm('Enter Email',false,email),
            SizedBox(height: 20,),
            Text("Password",style: TitleSign,),
            SizedBox(height: 5,),
            buildInputForm('Password',true,password),
            SizedBox(height: 20,),
            Text("First Name",style: TitleSign,),
            SizedBox(height: 5,),
            buildInputForm('First Name',false,firstN),
            SizedBox(height: 20,),
            Text("Last Name",style: TitleSign,),
            SizedBox(height: 5,),
            buildInputForm('Last Name',false,lostN),
            SizedBox(height: 20,),
            Text("Enter nickname",style: TitleSign,),
            SizedBox(height: 5,),
            buildInputForm('Enter nickname',false,nickname),
          ],
        ),
      ),
    );
  }

  Padding buildInputForm(String label,bool pass,TextEditingController SignController) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 3),
        child: TextFormField(
          controller: SignController,
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
              labelText: label,
           labelStyle: TextStyle(color: kTextFielColor),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: kPrimaryColor)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: kPrimaryColor),
      ),
              suffixIcon: pass
                  ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure =!_isObscure;
                  });
                },
                icon: Icon(_isObscure ? Icons.visibility_off :Icons.visibility, color: kPrimaryColor,),
              )
                  : null
    ),
        ),
      );
  }
}
