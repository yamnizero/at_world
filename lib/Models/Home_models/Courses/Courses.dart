
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



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
        width: MediaQuery.of(context).size.width*0.5,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(

              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                  elevation: 6.0,
                  color: Colors.black,
                  child: Image.asset(
                    coursesModel.imageUrl,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 11,
                  left: 4,
                  child: Container(
                    height: 20,
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
                Positioned(
                  left: 6,
                  bottom: 15,
                  child: Container(
                    child: LinearPercentIndicator(
                      width: 120,
                      lineHeight: 3,
                      percent: 40/100,
                      animation: true,
                      animationDuration: 1500,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                    right: 13,
                    child: Icon(Icons.cloud_download_outlined,
                    color: Colors.black,
                    )),
              ],
            ),
            Text(
             coursesModel.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
            ),
            SizedBox(height: 5,),
            Text(coursesModel.name),
          ],
        ),
      ),
    );
  }
}
