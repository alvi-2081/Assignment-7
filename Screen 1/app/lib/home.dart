import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_sharp, color: Colors.orange)),
          title: Container(
            padding: EdgeInsets.only(left: 15.0),
            // margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Color(0xFFfff5e0),
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Your Food",
                        hintStyle: TextStyle(color: Color(0xFFcccac8)),
                        icon: Icon(
                          Icons.search,
                          color: Color(0xFFcccac8),
                        )),
                  ))
                ],
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15.0, left: 0, top: 5, bottom: 5),
              child: Container(
                width: 55,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFde5a35), width: 1.5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("id.jpg"), fit: BoxFit.fill),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
                top: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFde5a35), width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("img.jpg"), fit: BoxFit.fill),
                      ),
                    ),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.arrow_back,
                    //       color: Colors.orange,
                    //     )),
                  ]),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFde5a35), width: 4),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("img.jpg"), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFde5a35), width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("img.jpg"), fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Original Fried Shrimp",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Text("Shrimp Category"),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(
                              color: Color(0xFFde5a35),
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                            ),
                          ),
                          Text("6.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ))
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: Text(
                        "The whole family will love this Mexican-style prawns and rice. It's ready in under 30 minutes"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Read More ...",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFde5a35),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.calendar_today,
                          color: Color(0xFFde5a35),
                        ),
                      ),
                      Text(
                        "0.5 Km Distance",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.remove,
                                    color: Colors.white, size: 15),
                                backgroundColor: Color(0xFFde5a35),
                              ),
                            ),
                            Container(
                              child: Text("1"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 20,
                              width: 20,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 15),
                                backgroundColor: Color(0xFFde5a35),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFde5a35))),
                            onPressed: () {},
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart),
                                Text("Add to Cart")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false, // <-- AND HERE
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Color(0xFFde5a35)),
                label: 'Personal'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Color(0xFFde5a35)),
              label: 'Boookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history, color: Color(0xFFde5a35)),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active, color: Color(0xFFde5a35)),
              label: 'Notifications',
            ),
          ],
        )
        // Material(
        //   child: TabBar(
        //       controller: TabController(
        //         length: 4,
        //         vsync: this,
        //       ),
        //       tabs: [
        //         Tab(
        //           icon: Icon(Icons.view_list, color: Color(0xFFde5a35)),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.bookmark),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.history),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.notifications),
        //         ),
        //       ]),
        // ),
        );
  }
}
