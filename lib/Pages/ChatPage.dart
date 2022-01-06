import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/CustomUI/CustomCard.dart';
import 'package:flutter_whatsappclone/Model/ChatModel.dart';
import 'package:flutter_whatsappclone/Screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key, this.chatModels,this.sourChat}) : super(key: key);
  final List<ChatModel> chatModels;
  final  ChatModel sourChat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: widget.chatModels.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: widget.chatModels[index],sourChat:  widget.sourChat
        ),
      ),
    );
  }
}
