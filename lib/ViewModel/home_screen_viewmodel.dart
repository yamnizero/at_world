import 'package:at_world/Models/Home_models/Courses.dart';
import 'package:at_world/Models/Home_models/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/UserFormMembers.dart';
import 'package:at_world/models/UserFormForums.dart';

class HomeScreenViewModel {
  List<UserFormModel> userForms;
  List<UserFormMembersModel> userMembers;
  List<UserFormActivityModel> userActivity;
  List<CoursesModel> courses;

  HomeScreenViewModel() {
    setUserFormModel();
    setUserFormMembersModel();
    setUserFormActivityModel();
    setCoursesModel();

  }

  void setUserFormModel() {
    userForms = [
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
      UserFormModel(
        title: 'Yamani',
        description: 'Description',
        imageUrl:
            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
        time: '4 min',
      ),
    ];
  }

  void setUserFormMembersModel() {
    userMembers = [
      UserFormMembersModel(
          imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
          imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
        imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
        imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
        imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
        imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
      UserFormMembersModel(
        imageUrl:  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
      ),
    ];
  }

  void setUserFormActivityModel() {
    userActivity= [
      UserFormActivityModel(
          title: 'Mohammed posted an update',
          time: '4 months ago',
          imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
          title: 'Ahmed posted an update',
          time: '7 months ago',
          imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
        title: 'omer posted an update',
        time: '15 months ago',
        imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
        title: 'Mohammed posted an update',
        time: '4 months ago',
        imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
        title: 'Mohammed posted an update',
        time: '4 months ago',
        imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
        title: 'Ali posted an update',
        time: '4 months ago',
        imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
      ),
      UserFormActivityModel(
        title: 'Mohammed posted an update',
        time: '4 months ago',
        imageUrl: "'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg'",
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
}




