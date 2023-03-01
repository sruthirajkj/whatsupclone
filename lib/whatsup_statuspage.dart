import 'package:flutter/material.dart';
import 'package:whatsupclone/utilities.dart';
import 'package:whatsupclone/whatsappcontact.dart';
import 'package:whatsupclone/whatsup_callpage.dart';
import 'package:whatsupclone/whatsup_startcommunity.dart';
import 'package:whatsupclone/whatsuphome.dart';

class Whatsup_statuspage extends StatefulWidget {
  const Whatsup_statuspage({Key? key}) : super(key: key);

  @override
  State<Whatsup_statuspage> createState() => _Whatsup_statuspageState();
}

class _Whatsup_statuspageState extends State<Whatsup_statuspage> {
  int _selectedTab = 2;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
            backgroundColor: Utilities.bgColor),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    title: Text("My status"),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Stack(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            child: Stack(
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    child:Align(alignment: Alignment.bottomLeft,
                                        child: Icon(Icons.add_circle, color: Colors.white))
                                        ,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Utilities.bottonColor,
                                    )),
                              ],
                            ),
                          ),
                          // index == 0 ? Padding(
                          //   child: Icon(Icons.add_circle),padding: EdgeInsets.only(top: 55,left: 3),):Text(""),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Row(
                      children: [
                        Text(
                          "Recent updates",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: status.length,
                        itemBuilder: (context, index) {
                          final statuss = status[index];
                          return ListTile(
                            title: Text(statuss["name"].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Row(
                              children: [Text(
                                statuss["message"].toString()),
                              ],
                            ),
                            leading: CircleAvatar(backgroundImage: NetworkImage(statuss["profile_pic"]),)
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        )





        );
  }
}
