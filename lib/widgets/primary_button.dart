import 'package:at_world/theme.dart';
import 'package:flutter/material.dart';
 class PrimaryButton extends StatelessWidget {
   final String buttonText;
   PrimaryButton({@required this.buttonText});

   @override
   Widget build(BuildContext context) {
     return Container(
       alignment: Alignment.center,
       height: MediaQuery.of(context).size.height *0.08,
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
         color: kClub,
       ),
       child: Text(buttonText,style: textButton.copyWith(color: Colors.white ),),
     );
   }
 }
