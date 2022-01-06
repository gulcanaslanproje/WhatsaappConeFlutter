import 'package:flutter/material.dart';
import 'package:flutter_whatsappclone/CustomUI/StatusPage/HeadOwnStatus.dart';
import 'package:flutter_whatsappclone/CustomUI/StatusPage/OthersStatus.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            HeadOwnStatus(),
            label("Recent updates"),
            OthersStatus(
              name: "Balram Rathore",
              imageName: "assets/2.jpg",
              time: "01:27",
              isSeen: false,
              statusNum: 1,
            ),
            OthersStatus(
              name: "Saket Sinha",
              imageName: "assets/3.jpg",
              time: "03:07",
              isSeen: false,
              statusNum: 2,
            ),
            OthersStatus(
              name: "BhanuDev Som",
              imageName: "assets/1.jpg",
              time: "02:27",
              isSeen: false,
              statusNum: 3,
            ),
            SizedBox(
              height: 10,
            ),
            label("Viewed updates"),
            OthersStatus(
              name: "Balram Rathore",
              imageName: "assets/2.jpg",
              time: "01:27",
              isSeen: true,
              statusNum: 1,
            ),
            OthersStatus(
              name: "Saket Sinha",
              imageName: "assets/3.jpg",
              time: "03:07",
              isSeen: true,
              statusNum: 2,
            ),
            OthersStatus(
              name: "BhanuDev Som",
              imageName: "assets/1.jpg",
              time: "02:27",
              isSeen: true,
              statusNum: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelName) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelName,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
