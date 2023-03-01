import 'package:flutter/material.dart';
import 'package:whatsupclone/utilities.dart';
import 'package:whatsupclone/whatsappcontact.dart';
import 'package:whatsupclone/whatsup_startcommunity.dart';
import 'package:whatsupclone/whatsup_statuspage.dart';
import 'package:whatsupclone/whatsuphome.dart';

class Whatsup_callpage extends StatefulWidget {
  const Whatsup_callpage({Key? key}) : super(key: key);

  @override
  State<Whatsup_callpage> createState() => _Whatsup_callpageState();
}

class _Whatsup_callpageState extends State<Whatsup_callpage> {
  int _selectedTab = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_call),
          backgroundColor: Utilities.bgColor),

      body:
      Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Text("Create call link"),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.link, color: Colors.white),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utilities.bottonColor,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Row(
                    children: [
                      Text(
                        "Recent",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: call.length,
                      itemBuilder: (context, index) {
                        final calls=call[index];
                        return ListTile(
                            title: Text(calls["name"],
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Row(
                              children: [
                                Icon(Icons.call_made,
                                    color: Utilities.bottonColor, size: 18),
                                Text(calls["message"]),
                              ],
                            ),
                            leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.green, shape: BoxShape.circle)),
                            trailing: Icon(
                              Icons.call,
                              color: Utilities.bottonColor,
                            ));
                      }),
                ),
              ],
            ),
          ),
        ],
      )
      // Column(children: [
      //
      //   ListTile(
      //     title: Text("Create call link"),
      //     leading: Padding(
      //       padding: const EdgeInsets.only(top: 8),
      //       child: Container(
      //           height: 50,
      //           width: 50,
      //           child: Icon(Icons.link, color: Colors.white),
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: Utilities.bottonColor,
      //           )),
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.only(left: 8.0, top: 8),
      //     child: Row(
      //       children: [
      //         Text(
      //           "Recent",
      //           style: TextStyle(color: Colors.grey),
      //         ),
      //       ],
      //     ),
      //   ),
      //   ListTile(
      //       title:
      //           Text("Sruthi", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("Today,5.22pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //               BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.call,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Sruthi", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_received, color:Colors.red, size: 18),
      //           Text("Today,4.30pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.call,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Anoop v m", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("Today,12.45pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.call,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Sruthi,Anoop v m & Appu", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("Yesterday,5.22pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.video_call_rounded,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Sruthi", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("(2)Today,5.22pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.call,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Sruthi", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("10 February,11.00pm"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.video_call_sharp,
      //         color: Utilities.bottonColor,
      //       )),
      //   ListTile(
      //       title:
      //       Text("Sruthi", style: TextStyle(fontWeight: FontWeight.bold)),
      //       subtitle: Row(
      //         children: [
      //           Icon(Icons.call_made, color: Utilities.bottonColor, size: 18),
      //           Text("9 February,5.01am"),
      //         ],
      //       ),
      //       leading: Container(
      //           height: 50,
      //           width: 50,
      //           decoration:
      //           BoxDecoration(color: Colors.green, shape: BoxShape.circle)),
      //       trailing: Icon(
      //         Icons.call,
      //         color: Utilities.bottonColor,
      //       )),
      // ]),
    );
  }
}
