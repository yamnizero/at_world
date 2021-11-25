import 'package:flutter/material.dart';

import '../theme.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isObscure =true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEmail('Email',email),
        SizedBox(height: 5,),
        buildPadding('Password',true,password),
      ],
    );
  }

  Padding buildEmail(String label,TextEditingController LoginController,) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: LoginController,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.email,color: kPrimaryColor,),
            labelText: label,
            labelStyle: TextStyle(color: kTextFielColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: kPrimaryColor)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: kPrimaryColor),
            ),
        ),
      ),
    );
  }
  Padding buildPadding(String label,bool pass,TextEditingController SignController,) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: SignController,
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            prefixIcon:Icon(Icons.lock,color: kPrimaryColor,),
            labelText: label,
            labelStyle: TextStyle(color: kTextFielColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: kPrimaryColor)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
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
                : null),
      ),
    );
  }

}
