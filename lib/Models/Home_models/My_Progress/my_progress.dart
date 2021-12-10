

import 'package:flutter/material.dart';


class MyProgressModel{
 // Icon icon1;
  String? title;
  //IconData icon2;

  MyProgressModel({ //@required this.icon1,
    @required this.title,
// @required this.icon2}
  });
}


class MyProgress extends StatelessWidget {
  final MyProgressModel myProgressModel;
  final void Function()? onTap;
  const MyProgress(this.myProgressModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 16,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.book,size: 25.0,),
              Center(child: Text(myProgressModel.title!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
              SizedBox(width:150),
              Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
