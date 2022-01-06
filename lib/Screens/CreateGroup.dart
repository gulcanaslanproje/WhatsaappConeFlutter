import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/CustomUI/AvtarCard.dart';
import 'package:flutter_whatsappclone/CustomUI/ButtonCard.dart';
import 'package:flutter_whatsappclone/CustomUI/ContactCard.dart';
import 'package:flutter_whatsappclone/Model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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

  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Group",
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groups.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  if (contacts[index - 1].select == false) {
                    setState(() {
                      contacts[index - 1].select = true;
                      groups.add(contacts[index - 1]);
                    });
                  } else {
                    setState(() {
                      contacts[index - 1].select = false;
                      groups.remove(contacts[index - 1]);
                    });
                  }
                },
                child: ContactCard(contact: contacts[index - 1]),
              );
            },
          ),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groups.remove(contacts[index]);
                                  });
                                },
                                child: AvtarCard(
                                  contact: contacts[index],
                                ),
                              );
                            } else
                              return Container();
                          }),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
