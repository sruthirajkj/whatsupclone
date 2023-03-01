import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [

                            Container(
                              child: Container(
                                height: 80,
                                width: 80,

                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.pink, width: 3)),
                              ),
                            ),
                           index == 0 ? Padding(
                                child: Icon(Icons.add_circle),padding: EdgeInsets.only(top: 55,left: 3),):Text(""),

                          ],
                        ),
                        Text("names")
                      ],
                    ),
                  );
                }),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("Name"),
                      leading: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.insider.com/57756a94dd08956e3f8b47be")))),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.heart_broken),
                          ),
                          Icon(Icons.chat_bubble),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.send),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200.0),
                            child: Icon(Icons.save_alt),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text("1924 likes",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          " Some Comments here",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "2 days ago",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
