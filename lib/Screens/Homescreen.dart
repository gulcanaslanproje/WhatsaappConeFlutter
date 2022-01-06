import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/Model/ChatModel.dart';
import 'package:flutter_whatsappclone/NewScreen/call_screen.dart';
import 'package:flutter_whatsappclone/Pages/CameraPage.dart';
import 'package:flutter_whatsappclone/Pages/ChatPage.dart';
import 'package:flutter_whatsappclone/Pages/StatusPage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key key, this.chatModels, this.sourChat}) : super(key: key);
  final List<ChatModel> chatModels;
  final ChatModel sourChat;

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Starred message"),
                value: "Starred message",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
          //  IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          CameraPage(),
          ChatPage(chatModels: widget.chatModels, sourChat:  widget.sourChat),
          StatusPage(),
          CallScreen(),
        ],
      ),
    );
  }
}
