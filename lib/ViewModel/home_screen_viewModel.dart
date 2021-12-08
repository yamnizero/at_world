import 'package:at_world/Models/Home_models/Courses/Courses.dart';
import 'package:at_world/Models/Home_models/Groups/Groups.dart';
import 'package:at_world/Models/Home_models/Activity/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/Forums/UserFormForums.dart';

import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/Notification/UserFormNotification.dart';
import 'package:at_world/Models/Home_models/Members/MainMember/setting_content.dart';
import 'package:at_world/Models/Home_models/Members/profi_member/widget_profile_det.dart';
import 'package:at_world/Models/Home_models/My_Progress/my_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class HomeScreenViewModel {
  List<UserFormForumsModel> userForms;
  List<UserFormMembersModel> userMembers;
  List<UserFormActivityModel> userActivity;
  List<CoursesModel> courses;
  List<GroupsModel> groups;
  List<UserFormNotificationsModel> notification;
  List<MyProgressModel> myprogress;
  List<SettingContentModel> settingpage;
  List<GeneralInformationModel> generalInformation;


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



}




