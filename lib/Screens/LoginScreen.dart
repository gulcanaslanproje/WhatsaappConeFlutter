import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/CustomUI/ButtonCard.dart';
import 'package:flutter_whatsappclone/Model/ChatModel.dart';
import 'package:flutter_whatsappclone/Screens/Homescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel sourChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Dev Srack",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Kishor",
      isGroup: false,
      currentMessage: "Hi Kishor",
      time: "10:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "Collins",
      isGroup: false,
      currentMessage: "Hi Collins",
      time: "14:00",
      icon: "person.svg",
      id: 3,
    ),
    ChatModel(
      name: "Balram Rathore ",
      isGroup: false,
      currentMessage: "Hi Buddy",
      time: "15:00",
      icon: "person.svg",
      id: 4,
    ),
    /* ChatModel(
      name: "Balram Friends",
      isGroup: true,
      currentMessage: "Hi Buddy",
      time: "10:00",
      icon: "groups.svg",
    ),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  sourChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                                chatModels: chatmodels,
                                sourChat: sourChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
