import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/CustomUI/ButtonCard.dart';
import 'package:flutter_whatsappclone/CustomUI/ContactCard.dart';
import 'package:flutter_whatsappclone/Model/ChatModel.dart';
import 'package:flutter_whatsappclone/Screens/CreateGroup.dart';

class SelectContact extends StatefulWidget {
  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  List<ChatModel> contacts = [
    ChatModel(
      name: "Dev Stack",
      status: "A full stack developer",
    ),
    ChatModel(
      name: "Balram",
      status: "Flutter Developer",
    ),
    ChatModel(
      name: "Saket",
      status: "Developer",
    ),
    ChatModel(
      name: "Dev",
      status: "App developer",
    ),
    ChatModel(
      name: "Dev Stack 1",
      status: "A full stack developer 1",
    ),
    ChatModel(
      name: "Balram 1",
      status: "Flutter Developer 1",
    ),
    ChatModel(
      name: "Saket 1",
      status: "Developer 1",
    ),
    ChatModel(
      name: "Dev 1",
      status: "App developer 1",
    ),
    ChatModel(
      name: "Dev Stack 2",
      status: "A full stack developer 2",
    ),
    ChatModel(
      name: "Balram 2",
      status: "Flutter Developer 2",
    ),
    ChatModel(
      name: "Saket 2",
      status: "Developer 2",
    ),
    ChatModel(
      name: "Dev 2",
      status: "App developer 2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Add participants",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Intvite a friend"),
                  value: "Intvite a friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0)
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateGroup()));
              },
              child: ButtonCard(
                icon: Icons.group,
                name: "New group",
              ),
            );
          else if (index == 1)
            return InkWell(
              onTap: () {},
              child: ButtonCard(
                icon: Icons.person_add,
                name: "New contact",
              ),
            );
          else
            return ContactCard(contact: contacts[index - 2]);
        },
      ),
    );
  }
}
