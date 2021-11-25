import 'package:flutter/material.dart';

import '../theme.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool _isObscure =true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPadding('Email',false),
        buildPadding('Password',true),
      ],
    );
  }

  Padding buildPadding(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: kTextFielColor),
            focusedBorder: UnderlineInputBorder(
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
