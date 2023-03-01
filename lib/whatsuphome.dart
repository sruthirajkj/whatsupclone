import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsupclone/utilities.dart';
import 'package:whatsupclone/whatsup_callpage.dart';
import 'package:whatsupclone/whatsup_chatpage.dart';
import 'package:whatsupclone/whatsup_startcommunity.dart';
import 'package:whatsupclone/whatsup_statuspage.dart';

import 'instahomepage.dart';

class Whatsuphome extends StatefulWidget {
  const Whatsuphome({Key? key}) : super(key: key);

  @override
  State<Whatsuphome> createState() => _WhatsuphomeState();
}

class _WhatsuphomeState extends State<Whatsuphome> {
  File? img;
  // get() {
  //   TextField(
  //     decoration: InputDecoration(label: Text("data")),
  //   );
  // }

  // File? img;
  //
  // int _selectedTab = 0;
  // int seletedText = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(7, 94, 85, 100),
            title: Text("WhatsApp"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () async {
                      ImagePicker imagepicker = ImagePicker();
                      XFile? pickedImage = await imagepicker.pickImage(
                          source: ImageSource.camera);
                      if (pickedImage != null) {
                        print(pickedImage.path);
                        setState(() {
                          img = File(pickedImage.path);
                        });
                      }
                    },
                    icon: Icon(Icons.camera_alt)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute
                       (builder: (context){return  Whatsup_chatpage(

                     ); }));
                    },
                    icon: Icon(Icons.search)),
              ),
              Icon(Icons.more_vert)
            ],
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                icon: Icon(Icons.group_add),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Call",
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Whatsapp_startcommunity(),
              Whatsup_chatpage(),
              Whatsup_statuspage(),
              Whatsup_callpage()
            ],
          ),
        ));
  }
}
