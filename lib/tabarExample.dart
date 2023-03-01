import 'package:flutter/material.dart';

import 'instahomepage.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text:"chat",

            ),
            Tab(
              text:"chat",

            ),
            Tab(
              text:"chat",

            )
          ]),
        ),
        body: TabBarView(
          children: [
            InstaHome(),
            InstaHome(),
            InstaHome()
          ],
        ),

      ),
    );
  }
}
