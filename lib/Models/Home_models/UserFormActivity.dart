

 import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';


 class UserFormActivityModel
 {
   String title;
   String time;
   String imageUrl;

   UserFormActivityModel({
    @required this.title,
     @required this.time,
     @required this.imageUrl,
  });
}



class UserFormActivity  extends StatelessWidget {
   final UserFormActivityModel userFormActivityModel;
   final void Function() onTap;
   const UserFormActivity(this.userFormActivityModel,{Key key,this.onTap}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap,
       child: Row(
         children: [
           CircleAvatar(
             radius: 23.0,
             backgroundImage: NetworkImage(userFormActivityModel.imageUrl),
           ),
           SizedBox(width: 15,),
           //here want button => make posts page ------**
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(userFormActivityModel.title,
                     maxLines: 3,
                     overflow: TextOverflow.ellipsis,
                     style: postText),
                 SizedBox(height: 5,),
                 Text(userFormActivityModel.time,style: timeText,),
               ],
             ),
           ),

         ],
       ),
     );
   }
 }



