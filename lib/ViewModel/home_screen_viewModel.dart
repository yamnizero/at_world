import 'package:at_world/Models/Home_models/Courses/Courses.dart';
import 'package:at_world/Models/Home_models/Groups/Groups.dart';
import 'package:at_world/Models/Home_models/Activity/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/Forums/UserFormForums.dart';
import 'package:at_world/Models/Home_models/Members/Groups/details_group.dart';
import 'package:at_world/Models/Home_models/Members/Groups/groups_member.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/Discussion/widget_screen_discussion.dart';
import 'package:at_world/Models/Home_models/Members/Groups/listBurronPageGroups.dart';
import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/Notification/UserFormNotification.dart';
import 'package:at_world/Models/Home_models/Members/MainMember/setting_content.dart';
import 'package:at_world/Models/Home_models/Members/profi_member/widget_profile_det.dart';
import 'package:at_world/Models/Home_models/My_Progress/my_progress.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class HomeScreenViewModel {
  late List<UserFormForumsModel> userForms;
  late List<UserFormMembersModel> userMembers;
  late List<UserFormActivityModel> userActivity;
  late List<CoursesModel> courses;
  late  List<GroupsModel> groups;
  late List<UserFormNotificationsModel> notification;
  late List<MyProgressModel> myprogress;
  late List<SettingContentModel> settingpage;
  late List<GeneralInformationModel> generalInformation;
  late List<GroupsMembersModel> memebergroups;
  late List<DetailsGroupModel> detailsGroup;
  late List<ListButtonPageGroupsModel> listButtonPage;
  late List<WidgetScreenDiscussionModel> listDiscussion;


   HomeScreenViewModel() {
    setUserFormModel();
    setUserFormMembersModel();
    setUserFormActivityModel();
    setCoursesModel();
    setGroupsModel();
    setUserFormNotificationsModel();
    setMyProgressModel();
    setSettingContentModel();
    setGeneralInformationModel();
    setGroupsMembersModel();
    setDetailsGroupModel();
    setListButtonPageGroupsModel();
    setWidgetScreenDiscussionModel();
  }

   void setUserFormModel() {
    userForms = [
      UserFormForumsModel(
        title: 'Mohammed',
        description: 'Description',
        imageUrl:
            'assets/images/me.png',
        time: '4 min',
      ),
      UserFormForumsModel(
        title: 'Mohammed',
        description: 'Description',
        imageUrl:
        'assets/images/me2.png',
        time: '4 min',
      ),
      UserFormForumsModel(
        title: 'Mohammed',
        description: 'Description',
        imageUrl:
        'assets/images/me.png',
        time: '4 min',
      ),
      UserFormForumsModel(
        title: 'Mohammed',
        description: 'Description',
        imageUrl:
        'assets/images/me2.png',
        time: '4 min',
      ),
    ];
  }

  void setUserFormMembersModel() {
    userMembers = [
      UserFormMembersModel(
        imageUrl: 'assets/images/me3.png',
                nameMem: 'Mohammed',
                nickName: 'yamni',

      ),
      UserFormMembersModel(
        imageUrl: 'assets/images/me.png',
        nameMem: 'Ahmed',
        nickName: '7mada',

      ),
      UserFormMembersModel(
        imageUrl: 'assets/images/me2.png',
        nameMem: 'Yasser',
       nickName: 'ysoor',
      ),
      UserFormMembersModel(
        imageUrl: 'assets/images/me3.png',
        nameMem: 'Yasser',
       nickName: 'ysoor',

      ),

    ];
  }

  void setUserFormActivityModel() {
    userActivity= [
      UserFormActivityModel(
          title: 'Mohammed posted an update',
          time: '4 months ago',
        imageUrl: 'assets/images/me.png',      ),
      UserFormActivityModel(
          title: 'Ahmed posted an update',
          time: '7 months ago',
        imageUrl: 'assets/images/me3.png',      ),
      UserFormActivityModel(
        title: 'omer posted an update',
        time: '15 months ago',
        imageUrl: 'assets/images/me3.png',
      ),
      UserFormActivityModel(
        title: 'Mohammed posted an update',
        time: '4 months ago',
        imageUrl: 'assets/images/me3.png',
      ),
      UserFormActivityModel(
        title: 'Mohammed posted an update',
        time: '4 months ago',
        imageUrl: 'assets/images/me2.png',
      ),


    ];
  }

  void setCoursesModel() {
    courses = [
      CoursesModel(
          title: 'How to build application How to build application How to build application',
          name: 'Ahamed',
          imageUrl: 'assets/images/flutter.png',
          tag: 'Start',
      ),
      CoursesModel(
        title: 'How to build application How to build application How to build application',
        name: 'Ahamed',
        imageUrl: 'assets/images/flutter.png',
        tag: 'Start',
      ),
      CoursesModel(
        title: 'How to build application How to build application How to build application',
        name: 'Ahamed',
        imageUrl: 'assets/images/flutter.png',
        tag: 'Start',
      ),
      CoursesModel(
        title: 'How to build application How to build application How to build application',
        name: 'Ahamed',
        imageUrl: 'assets/images/flutter.png',
        tag: 'Start',
      ),
    ];
  }

  void setGroupsModel() {
    groups= [
      GroupsModel(
          title: 'business',
          type: 'Group',
        imageUrl: 'assets/images/b.png',
      ),
      GroupsModel(
          title: 'Property Rent and ',
          type: 'Group',
        imageUrl: 'assets/images/p.png',
      ),
      GroupsModel(
        title: 'Developers',
        type: 'Team',
        imageUrl: 'assets/images/d.png',
      ),
      GroupsModel(
          title: 'Aviation Leader',
          type: 'Group',
        imageUrl: 'assets/images/flutter.png',
      ),
      GroupsModel(
          title: 'Developers',
          type: 'Team',
        imageUrl: 'assets/images/d.png',
      ),
    ];
  }

  void setUserFormNotificationsModel() {
    notification = [
      UserFormNotificationsModel(
        title: 'Ahmed commented on one of your updates',
        imageUrl: 'assets/images/me3.png',
        time: '4 months ago',
      ),
      UserFormNotificationsModel(
        title: 'Mohammed commented on one of your updates',
        imageUrl: 'assets/images/me.png',
        time: 'a year ago',
      ),
      UserFormNotificationsModel(
        title: 'omer commented on one of your updates',
        imageUrl: 'assets/images/me.png',
        time: 'a year ago',
      ),
      UserFormNotificationsModel(
        title: 'Mohammed commented on one of your updates',
        imageUrl: 'assets/images/me3.png',
        time: 'a year ago',
      ),
      UserFormNotificationsModel(
        title: 'Mohammed commented on one of your updates',
        imageUrl: 'assets/images/me2.png',
        time: 'a year ago',
      ),
    ];
  }

  void setMyProgressModel() {
    myprogress = [
      MyProgressModel(title: 'Courses'),
      MyProgressModel(title: 'Achievements'),
      MyProgressModel(title: 'Certificates'),
    ];
  }

  void setSettingContentModel() {
    settingpage =[
      SettingContentModel(
        title: 'Profile',
        icon:  (AntDesign.user),
        num: "1",
      ),
      SettingContentModel(
        title: 'TimeLine',
        icon: AntDesign.linechart,
        num: "11",
      ),
      SettingContentModel(
        title: 'Connection',
        icon:  AntDesign.adduser,
        num: "1",
      ),
      SettingContentModel(
        title: 'Groups',
        icon: AntDesign.addusergroup,
        num: "9",
      ),
      SettingContentModel(
        title: 'Photos',
        icon:  AntDesign.picture,
        num: "1",
      ),
      SettingContentModel(
        title: 'Documents',
        icon: AntDesign.paperclip,
        num: "5",
      ),
      SettingContentModel(
        title: 'Videos',
        icon: AntDesign.videocamera,
        num: "1",
      ),


    ];
  }

  void setGeneralInformationModel() {
    generalInformation =[
    GeneralInformationModel(
      firstName: 'Mohammed',
      lastName: 'Gamal',
      nickname: 'yamni',
      birthDate: '13/09/1996',
      Gender: 'male',
      phone: '+249907970206',
    )
    ];
  }

  void setGroupsMembersModel()
  {
    memebergroups =[
      GroupsMembersModel(
          image:'assets/images/flutter.png',
          title: 'Business Meet',
          publicType:'meet',
          mange: 'Organizer',
          numMem: '7',
      ),
      GroupsMembersModel(
          image:'assets/images/p.png',
          title: 'Teaching Ideas',
          publicType:'Club',
          mange: 'Organizer',
          numMem: '8',

      ),
      GroupsMembersModel(
          image:'assets/images/d.png',
          title: 'y Meet',
          publicType:'Club',
          mange: 'Organizer',
          numMem: '3',
      ),
    ];
  }

  void setDetailsGroupModel() {
    detailsGroup = [
      DetailsGroupModel(
          background: 'assets/images/me.png',
      ),
      DetailsGroupModel(
          background: 'assets/images/bu2.png',
      ),

      DetailsGroupModel(
        background: 'assets/images/blue.png',
      ),
    ];
  }

  void setListButtonPageGroupsModel() {
    listButtonPage =[
      ListButtonPageGroupsModel(
        title: 'feed',
        icon:  (MaterialIcons.timeline),
        num: "0",

      ),
      ListButtonPageGroupsModel(
        title: 'Members',
        icon:  (MaterialIcons.card_membership),
        num: "1",

      ),
      ListButtonPageGroupsModel(
        title: 'Photos',
        icon:  (AntDesign.adduser),
        num: "1",

      ),
      ListButtonPageGroupsModel(
        title: 'Videos',
        icon:  (AntDesign.videocamera),
        num: "1",

      ),
      ListButtonPageGroupsModel(
        title: 'Documents',
        icon:  (AntDesign.paperclip),
        num: "1",
      ),
      ListButtonPageGroupsModel(
        title: 'Discussions',
        icon:  (AntDesign.wechat),
        num: "1",
      ),
      // ListButtonPageGroupsModel(
      //   title: 'Send Invites',
      //   icon:  (AntDesign.adduser),
      //   num: "1",
      // ),
      // ListButtonPageGroupsModel(
      //   title: 'Send Messages',
      //   icon:  (AntDesign.inbox),
      //   num: "1",
      // ),
      // ListButtonPageGroupsModel(
      //   title: 'Manage',
      //   icon:  (AntDesign.setting),
      //   num: "1",
      // ),
    ];
  }

  void setWidgetScreenDiscussionModel() {
     listDiscussion = [
       WidgetScreenDiscussionModel(
           titleDiscussion: 'Cyber Security for Beginners',
           numMemDis: '2',
           numReplies: '2',
           time: '2',
           imageDis: 'assets/images/me3.png',
       ),
       WidgetScreenDiscussionModel(
           titleDiscussion: 'Flutter for Beginners',
           numMemDis: '24',
           numReplies: '25',
           time: '7',
           imageDis: 'assets/images/flutter.png',
       ),
       WidgetScreenDiscussionModel(
         titleDiscussion: 'Cyber Security for Beginners',
         numMemDis: '2',
         numReplies: '2',
         time: '2',
         imageDis: 'assets/images/me3.png',
       ),
     ];
  }



}




