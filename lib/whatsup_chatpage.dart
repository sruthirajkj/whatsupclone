import 'package:flutter/material.dart';
import 'package:whatsupclone/utilities.dart';
import 'package:whatsupclone/whatsappcontact.dart';

class Whatsup_chatpage extends StatefulWidget {
  const Whatsup_chatpage({Key? key}) : super(key: key);

  @override
  State<Whatsup_chatpage> createState() => _Whatsup_chatpageState();
}

class _Whatsup_chatpageState extends State<Whatsup_chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Utilities.bgColor,
      ),
      body: Column(
        children: [
          (Expanded(
            child: ListView.builder(
              itemCount: contact.length,
              itemBuilder: (context, index) {
                final contacts = contact[index];
                return ListTile(
                  title: Text(contacts["name"],
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(contacts["message"]),
                  leading: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(contacts["profile_pic"]
                      //'asset_contact/p.jpg'
                    ) ,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: Image.asset(contacts["profile_pic"]),
                  // ),

                  trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(contacts["last_seen"],
                            style: TextStyle(color: Utilities.bottonColor)),
                        Container(
                          height: 15,
                          width: 15,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(contacts["unread"],
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          decoration: BoxDecoration(
                              color: Utilities.bottonColor,
                              shape: BoxShape.circle),
                        ),
                      ]),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
