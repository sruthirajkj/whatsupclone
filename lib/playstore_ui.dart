import 'package:flutter/material.dart';

import 'instahomepage.dart';

class Playstore_mainpage extends StatefulWidget {
  const Playstore_mainpage({Key? key}) : super(key: key);

  @override
  State<Playstore_mainpage> createState() => _Playstore_mainpageState();
}

class _Playstore_mainpageState extends State<Playstore_mainpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.account_box,
                color: Colors.black,
              ),
            )
          ],
          title: TextField(
            decoration: InputDecoration( filled: true,fillColor: Colors.white12,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                hintText: "search",
                suffixIcon: Icon(
                  Icons.mic,
                ),
                prefixIcon: Icon(Icons.search)),
          ),
          bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor:Colors.black , labelColor: Colors.blue,
              tabs: [

            Tab(
              text: "For you",
            ),
            Tab(
              text: "Top charts",
            ),
            Tab(
              text: "Children",
            ),
            Tab(
              text: "Event",
            ),
            Tab(
              text: "Premium",
            ),
            Tab(
              text: "Categories",
            ),

          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset), label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "apps"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer),label: "offers"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "Books")
        ],type: BottomNavigationBarType.fixed,
        ),
        body: TabBarView(children: [InstaHome(), InstaHome(), InstaHome()]),
      ),
    );
  }
}
