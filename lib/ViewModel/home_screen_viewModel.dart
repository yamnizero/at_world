import 'package:at_world/Models/Home_models/Courses.dart';
import 'package:at_world/Models/Home_models/Groups.dart';
import 'package:at_world/Models/Home_models/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/UserFormForums.dart';
import 'package:at_world/Models/Home_models/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/UserFormNotification.dart';
import 'package:at_world/Models/Home_models/detail_member_models/setting_content.dart';
import 'package:at_world/Models/Home_models/my_progress.dart';


class HomeScreenViewModel {
  List<UserFormForumsModel> userForms;
  List<UserFormMembersModel> userMembers;
  List<UserFormActivityModel> userActivity;
  List<CoursesModel> courses;
  List<GroupsModel> groups;
  List<UserFormNotificationsModel> notification;
  List<MyProgressModel> myprogress;
  List<SettingContentModel> settingpage;

  HomeScreenViewModel() {
    setUserFormModel();
    setUserFormMembersModel();
    setUserFormActivityModel();
    setCoursesModel();
    setGroupsModel();
    setUserFormNotificationsModel();
    setMyProgressModel();
    setSettingContentModel();

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
      ),
      UserFormMembersModel(
        imageUrl:
        'assets/images/me2.png',
      ),
      UserFormMembersModel(
        imageUrl:
        'assets/images/me3.png',
      ),
      UserFormMembersModel(
        imageUrl:
        'assets/images/me.png',
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
        num: "1",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "1",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "1",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "9",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "1",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "50",
      ),
      SettingContentModel(
        title: 'Profile',
        num: "1",
      ),

    ];
  }


}




