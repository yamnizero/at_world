

import 'package:at_world/Models/member_models/Tab_members/tab_all_members.dart';

class MemberScreenViewModel {
  late List<TabAllMembersModel> allMembers;

   MemberScreenViewModel(){
     setTabAllMembersModel();
   }

  void setTabAllMembersModel() {
     allMembers = [
       TabAllMembersModel(
         name: 'Mohamed',
         img: 'assets/images/me2.png',
         identity: 'student',
       ),
       TabAllMembersModel(
         name: 'Ahmed',
         img: 'assets/images/me2.png',
         identity: 'student',
       ),
       TabAllMembersModel(
         name: 'Ali',
         img: 'assets/images/me3.png',
         identity: 'student',
       ),
       TabAllMembersModel(
         name: 'Omer',
         img: 'assets/images/me1.png',
         identity: 'Mentor',
       ),
       TabAllMembersModel(
         name: 'Amjad',
         img: 'assets/images/me.png',
         identity: 'Mentor',
       ),
       TabAllMembersModel(
         name: 'Amjad',
         img: 'assets/images/me.png',
         identity: 'Mentor',
       ),
       TabAllMembersModel(
         name: 'Amjad',
         img: 'assets/images/me.png',
         identity: 'Mentor',
       ),
       TabAllMembersModel(
         name: 'Amjad',
         img: 'assets/images/me.png',
         identity: 'Mentor',
       ),


     ];

  }

}