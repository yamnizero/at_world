import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = kClub,
  double radius = 10.0,
  @required Function function,
  @required String text,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

//-----

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required Function validate,
  bool isPassword = false,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: validate,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
          color: kPrimaryColor,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: kPrimaryColor,
                ),
              )
            : null,
        labelText: label,
        labelStyle: TextStyle(color: kTextFielColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kClub),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kClub),
        ),
      ),
    );


