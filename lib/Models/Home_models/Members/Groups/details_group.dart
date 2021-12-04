
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DetailsGroup extends StatelessWidget {
  const DetailsGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child : Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                color: Colors.red,
                child: Image.asset('assets/images/p.png',fit: BoxFit.cover,),
              ),
              Positioned(
                  top: 45,
                  left: 25,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.white,),
                  )
              ),
              Positioned(
                  top: 45,
                  right: 25,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(MaterialIcons.more_horiz,size: 18,color: Colors.white,),
                  )
              ),
              Column(
                children: [
                  //
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
