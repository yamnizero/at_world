
import 'package:at_world/modules/signup/sign.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class AtClubLayout extends StatelessWidget {
  const AtClubLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/@CLUB Gray.png',
            fit: BoxFit.contain,
            height: 32,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Members',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "See all",
                    style: textSee.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                            radius: 25.0,
                            backgroundImage:NetworkImage(
                                'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
                            ),
                          ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                            radius: 25.0,
                            backgroundImage:NetworkImage(
                                'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                            ),
                          ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage:NetworkImage(
                          'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2020/06/24/cf9d675c-b1fe-11ea-953d-a7ecc5cbd229_image_hires_144326.jpg',
                        ),
                      ),
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}


