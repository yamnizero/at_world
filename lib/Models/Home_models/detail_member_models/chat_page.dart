import 'package:at_world/share/network/remote/data.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage>{
  TextEditingController _sendMessageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title:Text( 'New Message',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: ()
              {
                Navigator.pop(context);
              },
              child: Text('Cancel')
          )
        ],
      ),
      body: getBody(),
      bottomSheet: getBottom(),
    );
  }
  Widget getBottom(){
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          color: grey.withOpacity(0.2)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width-80,
                      height: 40,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextField(
                          cursorColor: black,
                          controller: _sendMessageController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type message...",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.send,size: 25,color:  Colors.grey,),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_circle,size: 25,color:  Colors.grey,),
                        SizedBox(width: 15,),
                        Icon(Icons.camera_alt,size: 25,color:  Colors.grey,),
                        SizedBox(width: 15,),
                        Icon(Icons.photo,size: 25,color:  Colors.grey,),
                        SizedBox(width: 15,),
                        Icon(Icons.keyboard_voice,size: 25,color: Colors.grey,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {

    return ListView(
      padding: EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 80),
      children: List.generate(messages.length, (index){
        return ChatBubble(isMe: messages[index]['isMe'],messageType: messages[index]['messageType'],message: messages[index]['message']);
      }),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String message;
  final int messageType;
  const ChatBubble({
    Key key, this.isMe, this.message, this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(isMe){
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: getMessageType(messageType)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(
                        color: white,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }else{
      return Padding(
        padding:  EdgeInsets.all(1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    color: grey,
                    borderRadius: getMessageType(messageType)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(
                        color: black,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

  }
  getMessageType(messageType){
    if(isMe){
      // start message
      if(messageType == 1){
        return BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30)
        );
      }
      // middle message
      else if(messageType == 2){
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30)
        );
      }
      // end message
      else if(messageType == 3){
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30)
        );
      }
      // standalone message
      else{
        return BorderRadius.all(Radius.circular(30));
      }
    }
    // for sender bubble
    else{
      // start message
      if(messageType == 1){
        return BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)
        );
      }
      // middle message
      else if(messageType == 2){
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)
        );
      }
      // end message
      else if(messageType == 3){
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)
        );
      }
      // standalone message
      else{
        return BorderRadius.all(Radius.circular(30));
      }
    }


  }
}