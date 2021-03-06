import 'package:at_world/Models/Home_models/Courses/Courses.dart';
import 'package:at_world/Models/Home_models/Groups/Groups.dart';
import 'package:at_world/Models/Home_models/Activity/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/Forums/UserFormForums.dart';
import 'package:at_world/Models/Home_models/Members/Groups/details_group.dart';
import 'package:at_world/Models/Home_models/Members/Groups/groups_member.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/Discussion/widget_screen_discussion.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/Manage/Nav_push_manage/settings/list_bottom_settingNav.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/Manage/widget_list_botton_manage.dart';
import 'package:at_world/Models/Home_models/Members/Groups/listBurronPageGroups.dart';
import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/Members/photos/photos_page_member.dart';
import 'package:at_world/Models/Home_models/Notification/UserFormNotification.dart';
import 'package:at_world/Models/Home_models/Members/MainMember/setting_content.dart';
import 'package:at_world/Models/Home_models/Members/profi_member/widget_profile_det.dart';
import 'package:at_world/Models/Home_models/My_Progress/my_progress.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
  late List<ListBottomManageModel> listBottomManage;
  late List<ListBottomSettingNaveModel> listBottomSettingNav;



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
    setListBottomManageModel();
    setListBottomSettingNaveModel();

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
      MyProgressModel(
          title: 'Courses',
        icon: FontAwesomeIcons.fileAlt,

      ),
      MyProgressModel(
          title: 'Achievements',
        icon: FontAwesomeIcons.tasks,
      ),
      MyProgressModel(
        title: 'Certificates',
        icon: FontAwesomeIcons.certificate,
      ),
    ];
  }

  void setSettingContentModel() {
    settingpage =[
      SettingContentModel(
        title: 'Profile',
        icon:  (AntDesign.user),
        num: 0,
      ),
      SettingContentModel(
        title: 'TimeLine',
        icon: AntDesign.linechart,
        num: 8,
      ),
      SettingContentModel(
        title: 'Connection',
        icon:  AntDesign.adduser,
        num: 1,
      ),
      SettingContentModel(
        title: 'Groups',
        icon: AntDesign.addusergroup,
        num: 0,
      ),
      SettingContentModel(
        title: 'Photos',
        icon:  AntDesign.picture,
        num: 0,
      ),
      SettingContentModel(
        title: 'Documents',
        icon: AntDesign.paperclip,
        num: 0,
      ),
      SettingContentModel(
        title: 'Videos',
        icon: AntDesign.videocamera,
        num: 0,
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
        num: 0,

      ),
      ListButtonPageGroupsModel(
        title: 'Members',
        icon:  (MaterialIcons.card_membership),
        num: 1,

      ),
      ListButtonPageGroupsModel(
        title: 'Photos',
        icon:  (AntDesign.adduser),
        num: 8,

      ),
      ListButtonPageGroupsModel(
        title: 'Videos',
        icon:  (AntDesign.videocamera),
        num: 0,

      ),
      ListButtonPageGroupsModel(
        title: 'Documents',
        icon:  (AntDesign.paperclip),
        num: 0,
      ),
      ListButtonPageGroupsModel(
        title: 'Discussions',
        icon:  (AntDesign.wechat),
        num: 0,
      ),
      ListButtonPageGroupsModel(
        title: 'Send Invites',
        icon:  (AntDesign.adduser),
        num: 0,
      ),
      ListButtonPageGroupsModel(
        title: 'Send Messages',
        icon:  (AntDesign.inbox),
        num: 2,
      ),
      ListButtonPageGroupsModel(
        title: 'Manage',
        icon:  (AntDesign.setting),
        num: 0,
      ),
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

  void setListBottomManageModel() {
     listBottomManage = [
       ListBottomManageModel(
         title: 'Details',
         icon:  (MaterialIcons.details),

       ),
       ListBottomManageModel(
         title: 'Settings',
         icon:  (MaterialIcons.settings),

       ),
       ListBottomManageModel(
         title: 'Discussions',
         icon:  (AntDesign.wechat),

       ),
       ListBottomManageModel(
         title: 'Photo',
         icon:  (AntDesign.picture),

       ),
       ListBottomManageModel(
         title: 'Cover Photo',
         icon:  (AntDesign.picture),

       ),
       ListBottomManageModel(
         title: 'Members',
         icon:  (MaterialIcons.account_circle),

       ),
       ListBottomManageModel(
         title: 'Delete',
         icon:  (AntDesign.delete),

       ),

     ];
  }

  void setListBottomSettingNaveModel() {
     listBottomSettingNav = [
       ListBottomSettingNaveModel(
           title: 'Privacy Option',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Invitations',
       ),
       ListBottomSettingNaveModel(
         title: 'Activity Feeds',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Photos',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Albums',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Documents',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Videos',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Messages',
       ),
       ListBottomSettingNaveModel(
         title: 'Group Type',
       ),
       ListBottomSettingNaveModel(
         title: 'Group parent',
       ),
     ];
  }





}




