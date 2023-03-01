import 'package:flutter/material.dart';
import 'package:whatsupclone/utilities.dart';
import 'package:whatsupclone/whatsup_callpage.dart';
import 'package:whatsupclone/whatsup_statuspage.dart';
import 'package:whatsupclone/whatsuphome.dart';

class Whatsapp_startcommunity extends StatefulWidget {
  const Whatsapp_startcommunity({Key? key}) : super(key: key);

  @override
  State<Whatsapp_startcommunity> createState() =>
      _Whatsapp_startcommunityState();
}

class _Whatsapp_startcommunityState extends State<Whatsapp_startcommunity> {
  int _selectedTab = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Icon(Icons.camera_alt),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //     ),
      //     Icon(Icons.more_vert)
      //   ],
      //   backgroundColor: Color.fromRGBO(7, 94, 85, 100),
      //   title: Text("WhatsApp"),
      //   automaticallyImplyLeading: false,
      // ),
      body: Column(
        children: [

          Column(
            children: [
              Container(
                height: 300,
               // width: 300,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.indianexpress."
                            "com%2F2022%2F11%2FExpressBasics-WhatsApp-Communities-.jpg&f=1&nofb=1&ipt="
                            "f7d02d189e1991658d581ab445632584c6763b27e17884c93a0c8852ff02a89f&ipo=images"))),
              ),
              InkWell(
                  child: Container(
                height: 30,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 8),
                  child: Text("Start Community",
                      style: TextStyle(color: Colors.white)),
                ),
                decoration: BoxDecoration(
                    color: Utilities.bottonColor,
                    borderRadius: BorderRadius.circular(10)),
              )),
            ],
          )
        ],
      ),
    );
  }
}
