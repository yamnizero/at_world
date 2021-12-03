import 'package:flutter/material.dart';


class GeneralInformationModel {
  String firstName;
  String lastName;
  String nickname;
  String birthDate;
  String Gender;
  String phone;

  GeneralInformationModel(
      {
        this.firstName,
      this.lastName,
      this.nickname,
      this.birthDate,
      this.Gender,
      this.phone});
}



class GeneralInformation extends StatelessWidget {
  final GeneralInformationModel generalInformationModel;
  const GeneralInformation(this.generalInformationModel,{Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('First Name'),
              subtitle: Text(generalInformationModel.firstName),
            ),
            Divider(height: 10,thickness: 2,),
            ListTile(
              title: Text('Last Name'),
              subtitle: Text(generalInformationModel.lastName),
            ),
            Divider(height: 10,thickness: 2,),
            ListTile(
              title: Text('NickName'),
              subtitle: Text(generalInformationModel.nickname),
            ),
            Divider(height: 10,thickness: 2,),
            ListTile(
              title: Text('Birth Date'),
              subtitle: Text(generalInformationModel.birthDate),
            ),
            Divider(height: 10,thickness: 2,),
            ListTile(
              title: Text('Gender'),
              subtitle: Text(generalInformationModel.Gender),
            ),
            Divider(height: 10,thickness: 2,),
            ListTile(
              title: Text('Phone'),
              subtitle: Text(generalInformationModel.phone,style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}
