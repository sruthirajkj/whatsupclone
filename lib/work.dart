import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );





    // import 'dart:io';
    //
    // import 'package:flutter/material.dart';
    // import 'package:image_picker/image_picker.dart';
    // import 'package:whatsupclone/utilities.dart';
    // import 'package:whatsupclone/whatsup_callpage.dart';
    // import 'package:whatsupclone/whatsup_startcommunity.dart';
    // import 'package:whatsupclone/whatsup_statuspage.dart';
    //
    // class Whatsuphome extends StatefulWidget {
    // const Whatsuphome({Key? key}) : super(key: key);
    //
    // @override
    // State<Whatsuphome> createState() => _WhatsuphomeState();
    // }
    //
    // class _WhatsuphomeState extends State<Whatsuphome> {
    // get() {
    // TextField(
    // decoration: InputDecoration(label: Text("data")),
    // );
    // }
    //
    // File? img;
    //
    // int _selectedTab = 0;
    // int seletedText = 0;
    // @override
    // Widget build(BuildContext context) {
    // return DefaultTabController(
    // length: 4,
    // child: Scaffold(
    // floatingActionButton: FloatingActionButton(
    //     onPressed: () {},
    //     child: seletedText == 0
    //         ? Icon(Icons.chat)
    //         : seletedText == 1
    //             ? Icon(Icons.camera_alt)
    //             : seletedText == 2
    //                 ? Icon(Icons.add_call)
    //                 : Text(""),
    //     backgroundColor: Utilities.bgColor),
    // appBar: AppBar(
    // elevation: 0,
    // actions: [
    // Padding(
    // padding: const EdgeInsets.all(10.0),
    // child: InkWell(
    // onTap: () async {
    // ImagePicker imgpick = ImagePicker();
    // XFile? pickimage =
    // await imgpick.pickImage(source: ImageSource.camera);
    // if (pickimage != null) {
    // print(pickimage.path);
    // img = File(pickimage.path);
    // }
    // },
    // child: Icon(Icons.camera_alt)),

    //             ImagePicker imagepicker = ImagePicker();
    //   XFile? pickedImage = await  imagepicker.pickImage(source: ImageSource.camera);
    //   if(pickedImage != null){
    //   print(pickedImage.path);
    //   setState(() {
    //   img =File(pickedImage.path);
    //   });
    //   },
    //             child: Text("upload image")),
    //   img != null ?  SizedBox(
    //   height: 100,
    //   width: 100,
    //   child: Image.file(img!),
    //   ):Text("")
    // ),
    // Padding(
    // padding: const EdgeInsets.all(10.0),
    // child: InkWell(
    // onTap: () {
    // get();
    // return;
    // },
    // child: Icon(Icons.search)),
    // ),
    // Icon(Icons.more_vert)
    // ],
    // backgroundColor: Color.fromRGBO(7, 94, 85, 100),
    // title: Text("WhatsApp"),
    // automaticallyImplyLeading: false,
    // bottom: TabBar(tabs: [
    // Tab(
    // icon: Icon(Icons.group_add),
    // ),
    // Tab(
    // text: "Chat",
    // ),
    // Tab(
    // text: "Status",
    // ),
    // Tab(
    // text: "Call",
    // )
    // ]),
    // ),
    // body: Column(children: [
    // TabBarView(
    // children: [
    // Whatsapp_startcommunity(),
    // Whatsapp_startcommunity(),
    // Whatsapp_startcommunity(),
    // Whatsapp_startcommunity()
    // ],
    // ),
    // Container(
    //   height: 50,
    //   decoration: BoxDecoration(color: Utilities.bgColor),
    //   child:
    //       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //     InkWell(
    //         onTap: () {
    //           setState(() {
    //             seletedText = 4;
    //             _selectedTab=4;
    //           });
    //           // Navigator.of(context)
    //           //     .push(MaterialPageRoute(builder: (context) {
    //           //   return Whatsapp_startcommunity();
    //           // }));
    //         },
    //         child: Icon(
    //           Icons.group_add,
    //           color: Colors.white,
    //         )),
    //     InkWell(
    //         onTap: () {
    //           setState(() {
    //             _selectedTab = 0;
    //             seletedText = 0;
    //           });
    //         },
    //         child: Text("Chat",
    //             style: TextStyle(color: Colors.white, fontSize: 18))
    //     ),
    //     InkWell(
    //         onTap: () {
    //           setState(() {
    //             _selectedTab = 1;
    //             seletedText = 1;
    //           });
    //           // Navigator.of(context)
    //           //     .push(MaterialPageRoute(builder: (context) {
    //           //   return Whatsup_statuspage();
    //           // }));
    //         },
    //         child: Text("Status",
    //             style: TextStyle(color: Colors.white, fontSize: 18))),
    //     Padding(
    //       padding: const EdgeInsets.only(right: 20.0),
    //       child: InkWell(
    //         onTap: () {
    //           setState(() {
    //             _selectedTab = 2;
    //             seletedText = 2;
    //           });
    //           // Navigator.of(context)
    //           //     .push(MaterialPageRoute(builder: (context) {
    //           //   return Whatsup_callpage();
    //           // }));
    //         },
    //         child: Text("Call",
    //             style: TextStyle(color: Colors.white, fontSize: 18)),
    //       ),
    //     )
    //   ]),
    // ),
    // seletedText == 0
    // ? Expanded(
    // child: ListView.builder(
    // itemCount: 10,
    // itemBuilder: (context, index) {
    // return ListTile(
    // title: Text("Sruthi",
    // style: TextStyle(fontWeight: FontWeight.bold)),
    // subtitle: Text("New message"),
    // leading: Container(
    // height: 50,
    // width: 50,
    // decoration: BoxDecoration(
    // color: Colors.green, shape: BoxShape.circle)),
    // trailing: Column(
    // crossAxisAlignment: CrossAxisAlignment.end,
    // children: [
    // Text("Time",
    // style: TextStyle(
    // color: Utilities.bottonColor)),
    // Container(
    // height: 15,
    // width: 15,
    // child: Padding(
    // padding: const EdgeInsets.only(left: 4.0),
    // child: Text("2",
    // style: TextStyle(
    // color: Colors.white,
    // )),
    // ),
    // decoration: BoxDecoration(
    // color: Utilities.bottonColor,
    // shape: BoxShape.circle),
    // ),
    // ]),
    // );
    // }),
    // )
    //     : seletedText == 1
    // ?
    // Expanded(
    // child: Column(
    // children: [
    // ListTile(
    // title: Text("My status",
    // style: TextStyle(
    // fontWeight: FontWeight.w500, fontSize: 18)),
    // subtitle: Text("Tap to add status update"),
    // leading: Container(
    // height: 50,
    // width: 50,
    // child: Icon(
    // Icons.add,
    // color: Colors.white,
    // size: 20,
    //),
    // child: Container(
    //     height: 20,
    //     width: 20,
    //     color: Utilities.bgColor,
    //     decoration: BoxDecoration(shape: BoxShape.circle)),
    // decoration: BoxDecoration(
    // shape: BoxShape.circle,
    // color: Colors.yellow)),
    // ),
    // Padding(
    // padding: const EdgeInsets.only(
    // left: 8.0, top: 10, bottom: 10),
    // child: Row(
    // children: [
    // Text("Recent updates"),
    // ],
    // ),
    // ),
    // Expanded(
    // child: ListView.builder(
    // itemCount: 10,
    // itemBuilder: (context, index) {
    // return ListTile(
    // title: Text("Sruthi",
    // style: TextStyle(
    // fontWeight: FontWeight.bold)),
    // subtitle: Text("yesterday,9.20pm"),
    // leading: Container(
    // height: 50,
    // width: 50,
    // decoration: BoxDecoration(
    // color: Colors.green,
    // shape: BoxShape.circle)),
    // );
    // }),
    // ),
    // ],
    // ),
    // )
    //     : seletedText == 2
    // ? Expanded(
    // child: Column(
    // children: [
    // ListTile(
    // title: Text("Create call link"),
    // leading: Padding(
    // padding: const EdgeInsets.only(top: 8),
    // child: Container(
    // height: 50,
    // width: 50,
    // child:
    // Icon(Icons.link, color: Colors.white),
    // decoration: BoxDecoration(
    // shape: BoxShape.circle,
    // color: Utilities.bottonColor,
    // )),
    // ),
    // ),
    // Padding(
    // padding:
    // const EdgeInsets.only(left: 8.0, top: 8),
    // child: Row(
    // children: [
    // Text(
    // "Recent",
    // style: TextStyle(color: Colors.grey),
    // ),
    // ],
    // ),
    // ),
    // Expanded(
    // child: ListView.builder(
    // itemCount: 10,
    // itemBuilder: (context, index) {
    // return ListTile(
    // title: Text("Sruthi",
    // style: TextStyle(
    // fontWeight: FontWeight.bold)),
    // subtitle: Row(
    // children: [
    // Icon(Icons.call_made,
    // color: Utilities.bottonColor,
    // size: 18),
    // Text("Today,5.22pm"),
    // ],
    // ),
    // leading: Container(
    // height: 50,
    // width: 50,
    // decoration: BoxDecoration(
    // color: Colors.green,
    // shape: BoxShape.circle)),
    // trailing: Icon(
    // Icons.call,
    // color: Utilities.bottonColor,
    // ));
    // }),
    // ),
    // ],
    // ),
    // )
    //     : Expanded(
    // child: ListView.builder(
    // itemCount: 1,
    // itemBuilder: (context, index) {
    // return Column(
    // children: [
    // Container(
    // height: 300,
    // width: 300,
    // decoration: BoxDecoration(
    // //color: Colors.red,
    // image: DecorationImage(
    // image: NetworkImage(
    // "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.indianexpress."
    // "com%2F2022%2F11%2FExpressBasics-WhatsApp-Communities-.jpg&f=1&nofb=1&ipt="
    // "f7d02d189e1991658d581ab445632584c6763b27e17884c93a0c8852ff02a89f&ipo=images"))),
    // ),
    // InkWell(
    // child: Container(
    // height: 30,
    // width: 200,
    // child: Padding(
    // padding: const EdgeInsets.only(
    // left: 40.0, top: 8),
    // child: Text("Start Community",
    // style:
    // TextStyle(color: Colors.white)),
    // ),
    // decoration: BoxDecoration(
    // color: Utilities.bottonColor,
    // borderRadius:
    // BorderRadius.circular(10)),
    // )),
    // ],
    // );
    // }),
    // ),
    //  _selectedTab==0 ?Container(height: 50,
    //    decoration:  BoxDecoration(
    //      border: Border(
    //          bottom: BorderSide(
    //              color: Colors.white,
    //              width: 3,
    //              style: BorderStyle.solid))),):
    //  _selectedTab==1 ?Container(height: 50,decoration:  BoxDecoration(
    //      border: Border(
    //          bottom: BorderSide(
    //              color: Colors.white,
    //              width: 3,
    //              style: BorderStyle.solid))),):
    // Container(height: 50,decoration:  BoxDecoration(
    //     border: Border(
    //         bottom: BorderSide(
    //             color: Colors.white,
    //             width: 3,
    //             style: BorderStyle.solid))),)
    // ]),
    // ),
    // );
    // }
    // }

  }
}
