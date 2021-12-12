


import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class ScreenDiscussionsNav extends StatefulWidget {
  const ScreenDiscussionsNav({Key? key}) : super(key: key);

  @override
  _ScreenDiscussionsNavState createState() => _ScreenDiscussionsNavState();
}

class DropDownListModel{
  int? id;
  String? nameDrop;

  DropDownListModel(this.id, this.nameDrop);

  static List<DropDownListModel> getDropDownListModel(){
    return <DropDownListModel>[
      DropDownListModel(1,'Innovation Club'),
      DropDownListModel(2,'Information Technology'),
      DropDownListModel(3,'Digital Marketing'),
      DropDownListModel(4,'Mobile Application'),
      DropDownListModel(5,'Ask Anything Random Here'),
      DropDownListModel(6,'Politics News'),
      DropDownListModel(6,'(No Forum)'),
    ];
  }

}

class _ScreenDiscussionsNavState extends State<ScreenDiscussionsNav> {
  bool isChecked = false; // This holds the state of the checkbox,
   List<DropDownListModel>? _dropDownList = DropDownListModel.getDropDownListModel();
     List<DropdownMenuItem<DropDownListModel>>? _dropdownMenuItems;
   DropDownListModel? _selectedDropDownListModel;

  @override
  void initState() {
    _dropdownMenuItems = builDropdownMenuItems(_dropDownList!);
    _selectedDropDownListModel = _dropdownMenuItems![0].value!;
    super.initState();
  }

  List<DropdownMenuItem<DropDownListModel>> builDropdownMenuItems(List dropDownList){
    List<DropdownMenuItem<DropDownListModel>> items = [];
    for (DropDownListModel dropList in dropDownList ){
      items.add(DropdownMenuItem(value: dropList,child: Text(dropList.nameDrop!),
      ),
      );
    }
    return  items;
  }

   void OnChangeDropdownItem(DropDownListModel? selectedModel){
    setState(() {
      _selectedDropDownListModel = selectedModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,)),
        title: Text('Discussions',style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: (){
                //here wanna toash
                //here wanna function
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 70,
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: Colors.grey.shade200,
                      primary: Colors.pink,
                    ),
                    child: Text('Save'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Group Forum Settings ',style:TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w700),),
            SizedBox(height: 5,),
            Text('Saying no will not delete existing forum content',
            style: TextStyle(color: Colors.grey,fontSize:17,),
            overflow: TextOverflow.clip,
            ),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('Yes, I want this group to have a discussion forum.',
                        style: TextStyle(color: Colors.black,fontSize:17,),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) { // This is where we update the state when the checkbox is tapped
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text('Only site administrators can reconfigure which forum belongs'
                'to this group.',
              style: TextStyle(color: Colors.black,fontSize:17,),
              overflow: TextOverflow.clip,
            ),
            SizedBox(height: 35,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Group Forum:',style:TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w700),),
                  ),
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        value: _selectedDropDownListModel,
                        items: _dropdownMenuItems,
                        onChanged: OnChangeDropdownItem,

                      ),
                    ),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
