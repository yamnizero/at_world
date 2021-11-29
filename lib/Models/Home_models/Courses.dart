
import 'package:flutter/material.dart';



class CoursesModel{
  String title;
  String name;
  String imageUrl;
  String tag;

  CoursesModel({
   @required this.title,
    @required this.name,
    @required this.imageUrl,
    @required this.tag,
  });
}




class Courses extends StatelessWidget {
  final CoursesModel coursesModel;
  final void Function() onTap;
  const Courses(this.coursesModel,{Key key,this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    coursesModel.imageUrl,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 0,
                  child: Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(40),
                        ),
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        coursesModel.tag,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
             coursesModel.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
            ),
            Text(coursesModel.name),
          ],
        ),
      ),
    );
  }
}
