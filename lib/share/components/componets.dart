import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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


Widget buttomSheet(context)
{
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         CircleAvatar(
                           radius: 25.0,
                           backgroundImage:AssetImage('assets/images/me2.png'),
                         ),
                         SizedBox(width: 15,),
                         Center(child: Text('Mohammed',style: TextStyle(fontSize: 14),)),
                       ],
                     ),
                     Row(
                       children: [
                         GestureDetector(
                           onTap: () {
                             Navigator.pop(context);
                           },
                           child: Icon(
                             Icons.close,
                             size: 15.0,
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
                SizedBox(height: 5,),
                Divider(height: 2.0,),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}

void showToast() =>
    Fluttertoast.showToast(
    msg: 'Connection request sent',
  toastLength: Toast.LENGTH_SHORT,
  backgroundColor: Colors.grey.withOpacity(0.5),
  textColor: Colors.black,
  // gravity: ToastGravity.BOTTOM,
  fontSize: 12,
);
void showToastCanel() => Fluttertoast.showToast(
    msg: 'Connection request sent',
  toastLength: Toast.LENGTH_SHORT,
  backgroundColor: Colors.grey.withOpacity(0.5),
  textColor: Colors.black,
  // gravity: ToastGravity.BOTTOM,
  fontSize: 12,
);

