import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var book1 = ["b1.jpg", "b2.jpg", "b3.jpg", "b4.jpg"];
  var name1 = [
    "The Gruffalo Library",
    "The Glass Sipper",
    "Story Theives",
    "Hide and Seek"
  ];
  var type1 = [
    "Fantasy Book",
    "Adventure Book",
    "Detective Book",
    "Mystery Book"
  ];
  var book2 = ["b5.jpg", "b6.jpg", "b7.jpg", "b8.jpg"];
  var name2 = [
    "Ginger the Girraf",
    "Everything Said is True",
    "In Your Own Backyard",
    "Henry and the Guradians of Lost"
  ];
  var type2 = [
    "Story Book",
    "True Story Book",
    "Detective Book",
    "Mystery Book"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            //Appbar Start here
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.view_list, color: Color(0xFF2a0f63))),
            actions: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.search,
                  color: Color(0xFF2a0f63),
                ),
              ),
            ]),

        // Appbar Ends
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Popular Now",
                  style: TextStyle(
                      color: Color(0xFF2a0f63),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: book1.length,
                    itemBuilder: (context, index) {
                      return list1(book1[index], name1[index], type1[index]);
                    }),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Best Seller",
                  style: TextStyle(
                      color: Color(0xFF2a0f63),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: book1.length,
                    itemBuilder: (context, index) {
                      return list1(book2[index], name2[index], type2[index]);
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false, // <-- AND HERE
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.message, color: Color(0xFF2a0f63)),
                label: 'Personal'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Color(0xFF2a0f63)),
              label: 'Boookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop, color: Color(0xFF2a0f63)),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list, color: Color(0xFF2a0f63)),
              label: 'Notifications',
            ),
          ],
        ));
  }
}

Widget list1(String book, String name, String type) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          //main column
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                book,
                width: 120,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    type,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
